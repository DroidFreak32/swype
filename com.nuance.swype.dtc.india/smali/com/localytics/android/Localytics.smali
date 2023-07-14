.class public Lcom/localytics/android/Localytics;
.super Ljava/lang/Object;
.source "Localytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/Localytics$Log;,
        Lcom/localytics/android/Localytics$ProfileScope;,
        Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;
    }
.end annotation


# static fields
.field static final ANALYTICS_HOST_KEY:Ljava/lang/String; = "analytics_host"

.field static final IGNORE_STANDARD_EVENT_CLV:Ljava/lang/String; = "ignore_standard_event_clv"

.field static final MANIFEST_HOST_KEY:Ljava/lang/String; = "manifest_host"

.field static final MAX_MONITORING_REGIONS_KEY:Ljava/lang/String; = "max_monitoring_regions"

.field static final MAX_REGION_DWELL_TIME_KEY:Ljava/lang/String; = "max_region_dwell_time"

.field static final MESSAGING_HOST_KEY:Ljava/lang/String; = "messaging_host"

.field static final MIN_REGION_DWELL_TIME_KEY:Ljava/lang/String; = "min_region_dwell_time"

.field static final PLUGIN_LIBRARY_KEY:Ljava/lang/String; = "plugin_library"

.field static final PROFILES_HOST_KEY:Ljava/lang/String; = "profiles_host"

.field static final REGION_THROTTLE_TIME_KEY:Ljava/lang/String; = "region_throttle_time"

.field static final SESSION_TIMEOUT_KEY:Ljava/lang/String; = "session_timeout"

.field static final USE_HTTPS_KEY:Ljava/lang/String; = "use_https"

.field static final USE_SANDBOX_KEY:Ljava/lang/String; = "use_sandbox"

.field private static final optionBooleanKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final optionStringKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final optionsNumberKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/localytics/android/Localytics$1;

    invoke-direct {v0}, Lcom/localytics/android/Localytics$1;-><init>()V

    sput-object v0, Lcom/localytics/android/Localytics;->optionsNumberKeys:Ljava/util/Set;

    .line 75
    new-instance v0, Lcom/localytics/android/Localytics$2;

    invoke-direct {v0}, Lcom/localytics/android/Localytics$2;-><init>()V

    sput-object v0, Lcom/localytics/android/Localytics;->optionStringKeys:Ljava/util/Set;

    .line 83
    new-instance v0, Lcom/localytics/android/Localytics$3;

    invoke-direct {v0}, Lcom/localytics/android/Localytics$3;-><init>()V

    sput-object v0, Lcom/localytics/android/Localytics;->optionBooleanKeys:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1830
    return-void
.end method

.method public static addProfileAttributesToSet(Ljava/lang/String;[J)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # [J

    .prologue
    .line 754
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->addProfileAttributesToSet(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 755
    return-void
.end method

.method public static addProfileAttributesToSet(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # [J
    .param p2, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 743
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->addProfileAttributesToSet(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 744
    return-void
.end method

.method public static addProfileAttributesToSet(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # [Ljava/lang/String;

    .prologue
    .line 777
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->addProfileAttributesToSet(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 778
    return-void
.end method

.method public static addProfileAttributesToSet(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # [Ljava/lang/String;
    .param p2, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 766
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->addProfileAttributesToSet(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 767
    return-void
.end method

.method public static addProfileAttributesToSet(Ljava/lang/String;[Ljava/util/Date;)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # [Ljava/util/Date;

    .prologue
    .line 800
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->addProfileAttributesToSet(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 801
    return-void
.end method

.method public static addProfileAttributesToSet(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # [Ljava/util/Date;
    .param p2, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 789
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->addProfileAttributesToSet(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 790
    return-void
.end method

.method public static areNotificationsDisabled()Z
    .locals 1

    .prologue
    .line 1098
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->areNotificationsDisabled()Z

    move-result v0

    return v0
.end method

.method public static autoIntegrate(Landroid/app/Application;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/localytics/android/Localytics;->autoIntegrate(Landroid/app/Application;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public static autoIntegrate(Landroid/app/Application;Ljava/lang/String;)V
    .locals 2
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "localyticsKey"    # Ljava/lang/String;

    .prologue
    .line 175
    if-nez p0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "application cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/LocalyticsManager;->autoIntegrate(Landroid/app/Application;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public static clearInAppMessageDisplayActivity()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1006
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->clearInAppMessageDisplayActivity()V

    .line 1007
    return-void
.end method

.method public static closeSession()V
    .locals 1

    .prologue
    .line 311
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->closeSession()V

    .line 312
    return-void
.end method

.method static decrementActivityCounter()V
    .locals 1

    .prologue
    .line 248
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->decrementActivityCounter()V

    .line 249
    return-void
.end method

.method public static decrementProfileAttribute(Ljava/lang/String;J)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "decrementValue"    # J

    .prologue
    .line 916
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, p2, v0}, Lcom/localytics/android/Localytics;->decrementProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 917
    return-void
.end method

.method public static decrementProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V
    .locals 5
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "decrementValue"    # J
    .param p3, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 905
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    const-wide/16 v2, -0x1

    mul-long/2addr v2, p1

    invoke-virtual {v0, p0, v2, v3, p3}, Lcom/localytics/android/LocalyticsManager;->incrementProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 906
    return-void
.end method

.method public static deleteProfileAttribute(Ljava/lang/String;)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 937
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, v0}, Lcom/localytics/android/Localytics;->deleteProfileAttribute(Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 938
    return-void
.end method

.method public static deleteProfileAttribute(Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 927
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/LocalyticsManager;->deleteProfileAttribute(Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 928
    return-void
.end method

.method public static dismissCurrentInAppMessage()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1038
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->dismissCurrentInAppMessage()V

    .line 1039
    return-void
.end method

.method static downloadInboxThumbnails(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/InboxCampaign;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1277
    .local p0, "campaigns":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/InboxCampaign;>;"
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->downloadInboxThumbnails(Ljava/util/List;)V

    .line 1278
    return-void
.end method

.method public static getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1720
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->getAppKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomDimension(I)Ljava/lang/String;
    .locals 1
    .param p0, "dimension"    # I

    .prologue
    .line 573
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->getCustomDimension(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1395
    const-string/jumbo v0, "customer_id"

    invoke-static {v0}, Lcom/localytics/android/Localytics;->getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGeofencesToMonitor(DD)Ljava/util/List;
    .locals 2
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1321
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/localytics/android/LocalyticsManager;->getGeofencesToMonitor(DD)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1407
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInAppMessageDismissButtonLocation()Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1754
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->getInAppMessageDismissButtonLocation()Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    move-result-object v0

    return-object v0
.end method

.method public static getInboxCampaigns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/InboxCampaign;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1232
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->getInboxCampaigns()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getInboxCampaignsUnreadCount()I
    .locals 1

    .prologue
    .line 1267
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->getInboxCampaignsUnreadCount()I

    move-result v0

    return v0
.end method

.method public static getInstallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1710
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->getInstallationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLibraryVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1730
    sget-object v0, Lcom/localytics/android/Constants;->LOCALYTICS_CLIENT_LIBRARY_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static getPushRegistrationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1064
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->getPushRegistrationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static handleNotificationReceived(Landroid/os/Bundle;)V
    .locals 1
    .param p0, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1133
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->handleNotificationReceived(Landroid/os/Bundle;)V

    .line 1134
    return-void
.end method

.method public static handlePushNotificationOpened(Landroid/content/Intent;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1108
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->handlePushNotificationOpened(Landroid/content/Intent;)V

    .line 1109
    return-void
.end method

.method public static handlePushNotificationReceived(Landroid/os/Bundle;)V
    .locals 1
    .param p0, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1122
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->tagPushReceivedEvent(Landroid/os/Bundle;)V

    .line 1123
    return-void
.end method

.method public static handleTestMode(Landroid/content/Intent;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1156
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->handleTestMode(Landroid/content/Intent;)V

    .line 1157
    return-void
.end method

.method static incrementActivityCounter()V
    .locals 1

    .prologue
    .line 237
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->incrementActivityCounter()V

    .line 238
    return-void
.end method

.method public static incrementProfileAttribute(Ljava/lang/String;J)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "incrementValue"    # J

    .prologue
    .line 893
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, p2, v0}, Lcom/localytics/android/Localytics;->incrementProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 894
    return-void
.end method

.method public static incrementProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "incrementValue"    # J
    .param p3, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 882
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/localytics/android/LocalyticsManager;->incrementProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 883
    return-void
.end method

.method public static integrate(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/localytics/android/Localytics;->integrate(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public static integrate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "localyticsKey"    # Ljava/lang/String;

    .prologue
    .line 147
    if-nez p0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/LocalyticsManager;->integrate(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method static isAppInForeground()Z
    .locals 1

    .prologue
    .line 226
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->isAppInForeground()Z

    move-result v0

    return v0
.end method

.method static isAutoIntegrate()Z
    .locals 1

    .prologue
    .line 203
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->isAutoIntegrate()Z

    move-result v0

    return v0
.end method

.method static isLocationMonitoringEnabled()Z
    .locals 1

    .prologue
    .line 1308
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->isLocationMonitoringEnabled()Z

    move-result v0

    return v0
.end method

.method public static isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 1648
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    return v0
.end method

.method public static isOptedOut()Z
    .locals 1

    .prologue
    .line 282
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->isOptedOut()Z

    move-result v0

    return v0
.end method

.method public static isTestModeEnabled()Z
    .locals 1

    .prologue
    .line 1181
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->isTestModeEnabled()Z

    move-result v0

    return v0
.end method

.method public static onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1461
    invoke-static {}, Lcom/localytics/android/Localytics;->dismissCurrentInAppMessage()V

    .line 1462
    invoke-static {}, Lcom/localytics/android/Localytics;->clearInAppMessageDisplayActivity()V

    .line 1463
    invoke-static {}, Lcom/localytics/android/Localytics;->closeSession()V

    .line 1464
    invoke-static {}, Lcom/localytics/android/Localytics;->upload()V

    .line 1465
    return-void
.end method

.method public static onActivityResume(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1437
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/localytics/android/Localytics;->onActivityResume(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 1438
    return-void
.end method

.method private static onActivityResume(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1442
    invoke-static {}, Lcom/localytics/android/Localytics;->openSession()V

    .line 1443
    invoke-static {}, Lcom/localytics/android/Localytics;->upload()V

    .line 1444
    invoke-static {p0}, Lcom/localytics/android/Localytics;->setInAppMessageDisplayActivity(Landroid/app/Activity;)V

    .line 1445
    invoke-static {p1}, Lcom/localytics/android/Localytics;->handleTestMode(Landroid/content/Intent;)V

    .line 1446
    invoke-static {p1}, Lcom/localytics/android/Localytics;->handlePushNotificationOpened(Landroid/content/Intent;)V

    .line 1447
    return-void
.end method

.method public static onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1478
    invoke-static {p0, p1}, Lcom/localytics/android/Localytics;->onActivityResume(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 1479
    return-void
.end method

.method public static openSession()V
    .locals 1

    .prologue
    .line 299
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->openSession()V

    .line 300
    return-void
.end method

.method static priorityDownloadCreative(Lcom/localytics/android/InboxCampaign;Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;)V
    .locals 1
    .param p0, "campaign"    # Lcom/localytics/android/InboxCampaign;
    .param p1, "firstDownloadedCallback"    # Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;

    .prologue
    .line 1282
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/LocalyticsManager;->priorityDownloadCreative(Lcom/localytics/android/InboxCampaign;Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;)V

    .line 1283
    return-void
.end method

.method public static refreshInboxCampaigns(Lcom/localytics/android/InboxRefreshListener;)V
    .locals 1
    .param p0, "callback"    # Lcom/localytics/android/InboxRefreshListener;

    .prologue
    .line 1243
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->refreshInboxCampaigns(Lcom/localytics/android/InboxRefreshListener;)V

    .line 1244
    return-void
.end method

.method public static registerPush(Ljava/lang/String;)V
    .locals 1
    .param p0, "senderId"    # Ljava/lang/String;

    .prologue
    .line 1048
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->registerPush(Ljava/lang/String;)V

    .line 1049
    return-void
.end method

.method public static removeProfileAttributesFromSet(Ljava/lang/String;[J)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # [J

    .prologue
    .line 824
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->removeProfileAttributesFromSet(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 825
    return-void
.end method

.method public static removeProfileAttributesFromSet(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # [J
    .param p2, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 812
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->removeProfileAttributesFromSet(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 813
    return-void
.end method

.method public static removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # [Ljava/lang/String;

    .prologue
    .line 847
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 848
    return-void
.end method

.method public static removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # [Ljava/lang/String;
    .param p2, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 836
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 837
    return-void
.end method

.method public static removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/util/Date;)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # [Ljava/util/Date;

    .prologue
    .line 870
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 871
    return-void
.end method

.method public static removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # [Ljava/util/Date;
    .param p2, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 859
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 860
    return-void
.end method

.method static retrieveTokenFromInstanceId()V
    .locals 1

    .prologue
    .line 1056
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->retrieveTokenFromInstanceId()V

    .line 1057
    return-void
.end method

.method static setAnalyticsHost(Ljava/lang/String;)V
    .locals 0
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 1787
    sput-object p0, Lcom/localytics/android/Constants;->ANALYTICS_HOST:Ljava/lang/String;

    .line 1788
    return-void
.end method

.method public static setAnalyticsListener(Lcom/localytics/android/AnalyticsListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/localytics/android/AnalyticsListener;

    .prologue
    .line 590
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setAnalyticsListener(Lcom/localytics/android/AnalyticsListener;)V

    .line 591
    return-void
.end method

.method static setClientLibraryVersion(Ljava/lang/String;)V
    .locals 0
    .param p0, "library"    # Ljava/lang/String;

    .prologue
    .line 1812
    sput-object p0, Lcom/localytics/android/Constants;->LOCALYTICS_CLIENT_LIBRARY_VERSION:Ljava/lang/String;

    .line 1813
    return-void
.end method

.method public static setCustomDimension(ILjava/lang/String;)V
    .locals 1
    .param p0, "dimension"    # I
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 561
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/LocalyticsManager;->setCustomDimension(ILjava/lang/String;)V

    .line 562
    return-void
.end method

.method public static setCustomerEmail(Ljava/lang/String;)V
    .locals 2
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 947
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    const-string/jumbo v1, "email"

    invoke-virtual {v0, v1, p0}, Lcom/localytics/android/LocalyticsManager;->setSpecialCustomerIdentifierAndAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    return-void
.end method

.method public static setCustomerFirstName(Ljava/lang/String;)V
    .locals 2
    .param p0, "firstName"    # Ljava/lang/String;

    .prologue
    .line 957
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    const-string/jumbo v1, "first_name"

    invoke-virtual {v0, v1, p0}, Lcom/localytics/android/LocalyticsManager;->setSpecialCustomerIdentifierAndAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    return-void
.end method

.method public static setCustomerFullName(Ljava/lang/String;)V
    .locals 2
    .param p0, "fullName"    # Ljava/lang/String;

    .prologue
    .line 977
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    const-string/jumbo v1, "full_name"

    invoke-virtual {v0, v1, p0}, Lcom/localytics/android/LocalyticsManager;->setSpecialCustomerIdentifierAndAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    return-void
.end method

.method public static setCustomerId(Ljava/lang/String;)V
    .locals 1
    .param p0, "customerId"    # Ljava/lang/String;

    .prologue
    .line 1385
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setCustomerId(Ljava/lang/String;)V

    .line 1386
    return-void
.end method

.method public static setCustomerLastName(Ljava/lang/String;)V
    .locals 2
    .param p0, "lastName"    # Ljava/lang/String;

    .prologue
    .line 967
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    const-string/jumbo v1, "last_name"

    invoke-virtual {v0, v1, p0}, Lcom/localytics/android/LocalyticsManager;->setSpecialCustomerIdentifierAndAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    return-void
.end method

.method public static setIdentifier(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1374
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/LocalyticsManager;->setIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    return-void
.end method

.method static setIgnoreStandardEventClv(Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "ignoreCLV"    # Ljava/lang/Boolean;

    .prologue
    .line 1817
    sput-object p0, Lcom/localytics/android/Constants;->IGNORE_STANDARD_EVENT_CLV:Ljava/lang/Boolean;

    .line 1818
    return-void
.end method

.method public static setInAppMessageDismissButtonImage(Landroid/content/res/Resources;I)V
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1193
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/LocalyticsManager;->setInAppMessageDismissButtonImage(Landroid/content/res/Resources;I)V

    .line 1194
    return-void
.end method

.method public static setInAppMessageDismissButtonImage(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1205
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/LocalyticsManager;->setInAppMessageDismissButtonImage(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1206
    return-void
.end method

.method public static setInAppMessageDismissButtonLocation(Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;)V
    .locals 1
    .param p0, "buttonLocation"    # Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1742
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setInAppMessageDismissButtonLocation(Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;)V

    .line 1743
    return-void
.end method

.method public static setInAppMessageDisplayActivity(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 995
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setInAppMessageDisplayActivity(Landroid/app/Activity;)V

    .line 996
    return-void
.end method

.method public static setInboxCampaignRead(JZ)V
    .locals 2
    .param p0, "campaignId"    # J
    .param p2, "read"    # Z

    .prologue
    .line 1257
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->setInboxCampaignRead(JZ)V

    .line 1258
    return-void
.end method

.method static setInboxDetailFragmentDisplaying(Ljava/lang/Object;Z)V
    .locals 1
    .param p0, "fragment"    # Ljava/lang/Object;
    .param p1, "displaying"    # Z

    .prologue
    .line 1272
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/LocalyticsManager;->setInboxDetailFragmentDisplaying(Ljava/lang/Object;Z)V

    .line 1273
    return-void
.end method

.method static setIsAutoIntegrate(Z)V
    .locals 1
    .param p0, "autoIntegrate"    # Z

    .prologue
    .line 214
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setIsAutoIntegrate(Z)V

    .line 215
    return-void
.end method

.method public static setLocation(Landroid/location/Location;)V
    .locals 1
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    .line 1417
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setLocation(Landroid/location/Location;)V

    .line 1418
    return-void
.end method

.method public static setLocationListener(Lcom/localytics/android/LocationListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/localytics/android/LocationListener;

    .prologue
    .line 1358
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setLocationListener(Lcom/localytics/android/LocationListener;)V

    .line 1359
    return-void
.end method

.method public static setLocationMonitoringEnabled(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 1297
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setLocationMonitoringEnabled(Z)V

    .line 1298
    return-void
.end method

.method public static setLoggingEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 1637
    sput-boolean p0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    .line 1638
    return-void
.end method

.method static setManifestHost(Ljava/lang/String;)V
    .locals 0
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 1807
    sput-object p0, Lcom/localytics/android/Constants;->MANIFEST_HOST:Ljava/lang/String;

    .line 1808
    return-void
.end method

.method static setMaxRegionDwellTime(J)V
    .locals 4
    .param p0, "seconds"    # J

    .prologue
    .line 1700
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/localytics/android/Constants;->MAX_REGION_DWELL_TIME_MILLIS:J

    .line 1701
    return-void
.end method

.method static setMessagingHost(Ljava/lang/String;)V
    .locals 0
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 1797
    sput-object p0, Lcom/localytics/android/Constants;->MARKETING_HOST:Ljava/lang/String;

    .line 1798
    return-void
.end method

.method public static setMessagingListener(Lcom/localytics/android/MessagingListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/localytics/android/MessagingListener;

    .prologue
    .line 1222
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setMessagingListener(Lcom/localytics/android/MessagingListener;)V

    .line 1223
    return-void
.end method

.method static setMinRegionDwellTime(J)V
    .locals 4
    .param p0, "seconds"    # J

    .prologue
    .line 1690
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/localytics/android/Constants;->MIN_REGION_DWELL_TIME_MILLIS:J

    .line 1691
    return-void
.end method

.method public static setNotificationsDisabled(Z)V
    .locals 1
    .param p0, "disable"    # Z

    .prologue
    .line 1087
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setNotificationsDisabled(Z)V

    .line 1088
    return-void
.end method

.method public static setOptedOut(Z)V
    .locals 1
    .param p0, "newOptOut"    # Z

    .prologue
    .line 271
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setOptedOut(Z)V

    .line 272
    return-void
.end method

.method private static setOption(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p0, "option"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 1502
    sget-object v5, Lcom/localytics/android/Localytics;->optionsNumberKeys:Ljava/util/Set;

    invoke-interface {v5, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1504
    const/4 v1, 0x0

    .line 1505
    .local v1, "numberValue":Ljava/lang/Number;
    if-eqz p1, :cond_0

    .line 1507
    instance-of v4, p1, Ljava/lang/Number;

    if-eqz v4, :cond_2

    move-object v1, p1

    .line 1509
    check-cast v1, Ljava/lang/Number;

    .line 1519
    :cond_0
    const-string/jumbo v4, "session_timeout"

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1521
    if-nez v1, :cond_3

    const-wide/16 v4, 0xf

    :goto_0
    invoke-static {v4, v5}, Lcom/localytics/android/Localytics;->setSessionTimeoutInterval(J)V

    .line 1627
    .end local v1    # "numberValue":Ljava/lang/Number;
    :cond_1
    :goto_1
    return-void

    .line 1513
    .restart local v1    # "numberValue":Ljava/lang/Number;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "invalid value "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (should be Number or null) for option "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " passed to setOptions()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    goto :goto_1

    .line 1521
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    goto :goto_0

    .line 1524
    :cond_4
    const-string/jumbo v4, "max_monitoring_regions"

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1526
    if-nez v1, :cond_5

    const/16 v4, 0x14

    :goto_2
    invoke-static {v4}, Lcom/localytics/android/Localytics;->setRegionMonitoringLimit(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v4

    goto :goto_2

    .line 1529
    :cond_6
    const-string/jumbo v4, "region_throttle_time"

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1531
    if-nez v1, :cond_7

    const-wide/32 v4, 0x1b7740

    :goto_3
    invoke-static {v4, v5}, Lcom/localytics/android/Localytics;->setRegionThrottleTime(J)V

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    goto :goto_3

    .line 1534
    :cond_8
    const-string/jumbo v4, "min_region_dwell_time"

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1536
    if-nez v1, :cond_9

    const-wide/16 v4, 0x7530

    :goto_4
    invoke-static {v4, v5}, Lcom/localytics/android/Localytics;->setMinRegionDwellTime(J)V

    goto :goto_1

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    goto :goto_4

    .line 1539
    :cond_a
    const-string/jumbo v4, "max_region_dwell_time"

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1541
    if-nez v1, :cond_b

    const-wide/32 v4, 0x240c8400

    :goto_5
    invoke-static {v4, v5}, Lcom/localytics/android/Localytics;->setMaxRegionDwellTime(J)V

    goto :goto_1

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    goto :goto_5

    .line 1545
    .end local v1    # "numberValue":Ljava/lang/Number;
    :cond_c
    sget-object v5, Lcom/localytics/android/Localytics;->optionBooleanKeys:Ljava/util/Set;

    invoke-interface {v5, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1547
    const/4 v0, 0x0

    .line 1548
    .local v0, "booleanValue":Ljava/lang/Boolean;
    if-eqz p1, :cond_d

    .line 1550
    instance-of v5, p1, Ljava/lang/Boolean;

    if-eqz v5, :cond_e

    move-object v0, p1

    .line 1552
    check-cast v0, Ljava/lang/Boolean;

    .line 1562
    :cond_d
    const-string/jumbo v5, "use_sandbox"

    invoke-static {p0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1564
    if-nez v0, :cond_f

    :goto_6
    invoke-static {v4}, Lcom/localytics/android/Localytics;->setUseSandbox(Z)V

    goto/16 :goto_1

    .line 1556
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "invalid value "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (should be Boolean or null) for option "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " passed to setOptions()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1564
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_6

    .line 1566
    :cond_10
    const-string/jumbo v5, "use_https"

    invoke-static {p0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1568
    if-nez v0, :cond_11

    const/4 v4, 0x1

    :goto_7
    invoke-static {v4}, Lcom/localytics/android/Localytics;->setUseHTTPS(Z)V

    goto/16 :goto_1

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_7

    .line 1570
    :cond_12
    const-string/jumbo v5, "ignore_standard_event_clv"

    invoke-static {p0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1572
    if-nez v0, :cond_13

    :goto_8
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/localytics/android/Localytics;->setIgnoreStandardEventClv(Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_8

    .line 1575
    .end local v0    # "booleanValue":Ljava/lang/Boolean;
    :cond_14
    sget-object v4, Lcom/localytics/android/Localytics;->optionStringKeys:Ljava/util/Set;

    invoke-interface {v4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1577
    const/4 v2, 0x0

    .line 1578
    .local v2, "stringValue":Ljava/lang/String;
    if-eqz p1, :cond_15

    .line 1580
    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_17

    move-object v2, p1

    .line 1582
    check-cast v2, Ljava/lang/String;

    .line 1583
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1585
    const/4 v2, 0x0

    .line 1596
    :cond_15
    const-string/jumbo v4, "analytics_host"

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1598
    if-nez v2, :cond_16

    const-string/jumbo v2, "analytics.localytics.com"

    .end local v2    # "stringValue":Ljava/lang/String;
    :cond_16
    invoke-static {v2}, Lcom/localytics/android/Localytics;->setAnalyticsHost(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1590
    .restart local v2    # "stringValue":Ljava/lang/String;
    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "invalid value "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (should be String or null) for option "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " passed to setOptions()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1600
    :cond_18
    const-string/jumbo v4, "messaging_host"

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1602
    if-nez v2, :cond_19

    const-string/jumbo v2, "analytics.localytics.com"

    .end local v2    # "stringValue":Ljava/lang/String;
    :cond_19
    invoke-static {v2}, Lcom/localytics/android/Localytics;->setMessagingHost(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1604
    .restart local v2    # "stringValue":Ljava/lang/String;
    :cond_1a
    const-string/jumbo v4, "profiles_host"

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1606
    if-nez v2, :cond_1b

    const-string/jumbo v2, "profile.localytics.com"

    .end local v2    # "stringValue":Ljava/lang/String;
    :cond_1b
    invoke-static {v2}, Lcom/localytics/android/Localytics;->setProfilesHost(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1608
    .restart local v2    # "stringValue":Ljava/lang/String;
    :cond_1c
    const-string/jumbo v4, "manifest_host"

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1610
    if-nez v2, :cond_1d

    const-string/jumbo v2, "manifest.localytics.com"

    .end local v2    # "stringValue":Ljava/lang/String;
    :cond_1d
    invoke-static {v2}, Lcom/localytics/android/Localytics;->setManifestHost(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1612
    .restart local v2    # "stringValue":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v4, "plugin_library"

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1614
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "androida_4.0.1"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1615
    .local v3, "version":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_1f

    .line 1617
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1618
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1620
    :cond_1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/localytics/android/Localytics;->setClientLibraryVersion(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1625
    .end local v2    # "stringValue":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/StringBuilder;
    :cond_20
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "invalid key "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " passed to setOptions()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static setOptions(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1494
    .local p0, "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1496
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/localytics/android/Localytics;->setOption(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1498
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;J)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # J

    .prologue
    .line 616
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, p2, v0}, Lcom/localytics/android/Localytics;->setProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 617
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # J
    .param p3, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 605
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/localytics/android/LocalyticsManager;->setProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 606
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # Ljava/lang/String;

    .prologue
    .line 662
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->setProfileAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 663
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # Ljava/lang/String;
    .param p2, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 651
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->setProfileAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 652
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;Ljava/util/Date;)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # Ljava/util/Date;

    .prologue
    .line 708
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->setProfileAttribute(Ljava/lang/String;Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 709
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # Ljava/util/Date;
    .param p2, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 697
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->setProfileAttribute(Ljava/lang/String;Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 698
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;[J)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # [J

    .prologue
    .line 639
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->setProfileAttribute(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 640
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # [J
    .param p2, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 628
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->setProfileAttribute(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 629
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # [Ljava/lang/String;

    .prologue
    .line 685
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->setProfileAttribute(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 686
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # [Ljava/lang/String;
    .param p2, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 674
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->setProfileAttribute(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 675
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;[Ljava/util/Date;)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # [Ljava/util/Date;

    .prologue
    .line 731
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->setProfileAttribute(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 732
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # [Ljava/util/Date;
    .param p2, "scope"    # Lcom/localytics/android/Localytics$ProfileScope;

    .prologue
    .line 720
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->setProfileAttribute(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 721
    return-void
.end method

.method static setProfilesHost(Ljava/lang/String;)V
    .locals 0
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 1827
    sput-object p0, Lcom/localytics/android/Constants;->PROFILES_HOST:Ljava/lang/String;

    .line 1828
    return-void
.end method

.method public static setPushRegistrationId(Ljava/lang/String;)V
    .locals 1
    .param p0, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 1074
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setPushRegistrationId(Ljava/lang/String;)V

    .line 1075
    return-void
.end method

.method static setReferrerId(Ljava/lang/String;)V
    .locals 1
    .param p0, "referrerId"    # Ljava/lang/String;

    .prologue
    .line 1142
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setReferrerId(Ljava/lang/String;)V

    .line 1143
    return-void
.end method

.method static setRegionMonitoringLimit(I)V
    .locals 2
    .param p0, "monitoringLimit"    # I

    .prologue
    .line 1668
    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/localytics/android/Constants;->GEOFENCES_MONITORING_LIMIT:I

    .line 1669
    return-void
.end method

.method static setRegionThrottleTime(J)V
    .locals 4
    .param p0, "seconds"    # J

    .prologue
    .line 1680
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/localytics/android/Constants;->REGION_THROTTLE_CUTOFF_TIME_MILLIS:J

    .line 1681
    return-void
.end method

.method static setSessionTimeoutInterval(J)V
    .locals 2
    .param p0, "seconds"    # J

    .prologue
    .line 1658
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p0

    sput-wide v0, Lcom/localytics/android/Constants;->SESSION_EXPIRATION:J

    .line 1659
    return-void
.end method

.method public static setTestModeEnabled(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 1170
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setTestModeEnabled(Z)V

    .line 1171
    return-void
.end method

.method static setUseHTTPS(Z)V
    .locals 0
    .param p0, "useHTTPS"    # Z

    .prologue
    .line 1759
    sput-boolean p0, Lcom/localytics/android/Constants;->USE_HTTPS:Z

    .line 1760
    return-void
.end method

.method static setUseSandbox(Z)V
    .locals 1
    .param p0, "useSandbox"    # Z

    .prologue
    .line 1764
    if-eqz p0, :cond_0

    .line 1766
    const-string/jumbo v0, "queuer-elb.sandbox53.localytics.com"

    invoke-static {v0}, Lcom/localytics/android/Localytics;->setAnalyticsHost(Ljava/lang/String;)V

    .line 1767
    const-string/jumbo v0, "queuer-elb.sandbox53.localytics.com"

    invoke-static {v0}, Lcom/localytics/android/Localytics;->setMessagingHost(Ljava/lang/String;)V

    .line 1768
    const-string/jumbo v0, "profile-api.sandbox53.localytics.com"

    invoke-static {v0}, Lcom/localytics/android/Localytics;->setProfilesHost(Ljava/lang/String;)V

    .line 1769
    const-string/jumbo v0, "manifest.sandbox53.localytics.com"

    invoke-static {v0}, Lcom/localytics/android/Localytics;->setManifestHost(Ljava/lang/String;)V

    .line 1778
    :goto_0
    return-void

    .line 1773
    :cond_0
    const-string/jumbo v0, "analytics.localytics.com"

    invoke-static {v0}, Lcom/localytics/android/Localytics;->setAnalyticsHost(Ljava/lang/String;)V

    .line 1774
    const-string/jumbo v0, "analytics.localytics.com"

    invoke-static {v0}, Lcom/localytics/android/Localytics;->setMessagingHost(Ljava/lang/String;)V

    .line 1775
    const-string/jumbo v0, "profile.localytics.com"

    invoke-static {v0}, Lcom/localytics/android/Localytics;->setProfilesHost(Ljava/lang/String;)V

    .line 1776
    const-string/jumbo v0, "manifest.localytics.com"

    invoke-static {v0}, Lcom/localytics/android/Localytics;->setManifestHost(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static tagAddedToCart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 6
    .param p0, "itemName"    # Ljava/lang/String;
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "itemType"    # Ljava/lang/String;
    .param p3, "itemPrice"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p4, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/LocalyticsManager;->tagAddedToCart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 406
    return-void
.end method

.method public static tagCompletedCheckout(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 1
    .param p0, "totalPrice"    # Ljava/lang/Long;
    .param p1, "itemCount"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 429
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->tagCompletedCheckout(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V

    .line 430
    return-void
.end method

.method public static tagContentRated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 6
    .param p0, "contentName"    # Ljava/lang/String;
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "rating"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 483
    .local p4, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/LocalyticsManager;->tagContentRated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 484
    return-void
.end method

.method public static tagContentViewed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "contentName"    # Ljava/lang/String;
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 442
    .local p3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/localytics/android/LocalyticsManager;->tagContentViewed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 443
    return-void
.end method

.method public static tagCustomerLoggedIn(Lcom/localytics/android/Customer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "customer"    # Lcom/localytics/android/Customer;
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/Customer;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 507
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->tagCustomerLoggedIn(Lcom/localytics/android/Customer;Ljava/lang/String;Ljava/util/Map;)V

    .line 508
    return-void
.end method

.method public static tagCustomerLoggedOut(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 517
    .local p0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->tagCustomerLoggedOut(Ljava/util/Map;)V

    .line 518
    return-void
.end method

.method public static tagCustomerRegistered(Lcom/localytics/android/Customer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "customer"    # Lcom/localytics/android/Customer;
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/Customer;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 495
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->tagCustomerRegistered(Lcom/localytics/android/Customer;Ljava/lang/String;Ljava/util/Map;)V

    .line 496
    return-void
.end method

.method public static tagEvent(Ljava/lang/String;)V
    .locals 4
    .param p0, "eventName"    # Ljava/lang/String;

    .prologue
    .line 324
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/localytics/android/Localytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 325
    return-void
.end method

.method public static tagEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/localytics/android/Localytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 342
    return-void
.end method

.method public static tagEvent(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 2
    .param p0, "eventName"    # Ljava/lang/String;
    .param p2, "customerValueIncrease"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 373
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/localytics/android/LocalyticsManager;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 374
    return-void
.end method

.method public static tagInvited(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 528
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/LocalyticsManager;->tagInvited(Ljava/lang/String;Ljava/util/Map;)V

    .line 529
    return-void
.end method

.method public static tagPurchased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 6
    .param p0, "itemName"    # Ljava/lang/String;
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "itemType"    # Ljava/lang/String;
    .param p3, "itemPrice"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 391
    .local p4, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/LocalyticsManager;->tagPurchased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 392
    return-void
.end method

.method public static tagScreen(Ljava/lang/String;)V
    .locals 1
    .param p0, "screen"    # Ljava/lang/String;

    .prologue
    .line 542
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->tagScreen(Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method public static tagSearched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 1
    .param p0, "queryText"    # Ljava/lang/String;
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "resultCount"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/localytics/android/LocalyticsManager;->tagSearched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 456
    return-void
.end method

.method public static tagShared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p0, "contentName"    # Ljava/lang/String;
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 469
    .local p4, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/LocalyticsManager;->tagShared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 470
    return-void
.end method

.method public static tagStartedCheckout(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 1
    .param p0, "totalPrice"    # Ljava/lang/Long;
    .param p1, "itemCount"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->tagStartedCheckout(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V

    .line 418
    return-void
.end method

.method public static triggerInAppMessage(Ljava/lang/String;)V
    .locals 1
    .param p0, "triggerName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1017
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/localytics/android/Localytics;->triggerInAppMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 1018
    return-void
.end method

.method public static triggerInAppMessage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "triggerName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1029
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/LocalyticsManager;->triggerInAppMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 1030
    return-void
.end method

.method public static triggerRegion(Lcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)V
    .locals 1
    .param p0, "region"    # Lcom/localytics/android/Region;
    .param p1, "event"    # Lcom/localytics/android/Region$Event;

    .prologue
    .line 1332
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/LocalyticsManager;->triggerRegion(Lcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)V

    .line 1333
    return-void
.end method

.method public static triggerRegions(Ljava/util/List;Lcom/localytics/android/Region$Event;)V
    .locals 1
    .param p1, "event"    # Lcom/localytics/android/Region$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/Region;",
            ">;",
            "Lcom/localytics/android/Region$Event;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1343
    .local p0, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/Region;>;"
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/LocalyticsManager;->triggerRegions(Ljava/util/List;Lcom/localytics/android/Region$Event;)V

    .line 1344
    return-void
.end method

.method public static upload()V
    .locals 1

    .prologue
    .line 190
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->upload()V

    .line 191
    return-void
.end method
