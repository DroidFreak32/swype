.class final Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;
.super Ljava/lang/Object;
.source "AdvertisingInfoProvider.java"


# instance fields
.field private final context:Landroid/content/Context;

.field final preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->context:Landroid/content/Context;

    .line 20
    new-instance v0, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;

    const-string/jumbo v1, "TwitterAdvertisingInfoPreferences"

    invoke-direct {v0, p1, v1}, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    .line 21
    return-void
.end method

.method static isInfoValid(Lio/fabric/sdk/android/services/common/AdvertisingInfo;)Z
    .locals 1
    .param p0, "advertisingInfo"    # Lio/fabric/sdk/android/services/common/AdvertisingInfo;

    .prologue
    .line 94
    if-eqz p0, :cond_0

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfo;->advertisingId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final getAdvertisingInfoFromStrategies()Lio/fabric/sdk/android/services/common/AdvertisingInfo;
    .locals 3

    .prologue
    .line 100
    .line 1086
    new-instance v1, Lio/fabric/sdk/android/services/common/AdvertisingInfoReflectionStrategy;

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lio/fabric/sdk/android/services/common/AdvertisingInfoReflectionStrategy;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-interface {v1}, Lio/fabric/sdk/android/services/common/AdvertisingInfoStrategy;->getAdvertisingInfo()Lio/fabric/sdk/android/services/common/AdvertisingInfo;

    move-result-object v0

    .line 103
    .local v0, "infoToReturn":Lio/fabric/sdk/android/services/common/AdvertisingInfo;
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->isInfoValid(Lio/fabric/sdk/android/services/common/AdvertisingInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1090
    new-instance v1, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy;

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-interface {v1}, Lio/fabric/sdk/android/services/common/AdvertisingInfoStrategy;->getAdvertisingInfo()Lio/fabric/sdk/android/services/common/AdvertisingInfo;

    move-result-object v0

    .line 107
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->isInfoValid(Lio/fabric/sdk/android/services/common/AdvertisingInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 116
    :goto_0
    return-object v0

    .line 110
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    goto :goto_0
.end method

.method final storeInfoToPreferences(Lio/fabric/sdk/android/services/common/AdvertisingInfo;)V
    .locals 4
    .param p1, "infoToReturn"    # Lio/fabric/sdk/android/services/common/AdvertisingInfo;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p1}, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->isInfoValid(Lio/fabric/sdk/android/services/common/AdvertisingInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "advertising_id"

    iget-object v3, p1, Lio/fabric/sdk/android/services/common/AdvertisingInfo;->advertisingId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "limit_ad_tracking_enabled"

    iget-boolean v3, p1, Lio/fabric/sdk/android/services/common/AdvertisingInfo;->limitAdTrackingEnabled:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->save(Landroid/content/SharedPreferences$Editor;)Z

    .line 77
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "advertising_id"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "limit_ad_tracking_enabled"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->save(Landroid/content/SharedPreferences$Editor;)Z

    goto :goto_0
.end method
