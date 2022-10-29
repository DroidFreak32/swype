.class final Lio/fabric/sdk/android/Onboarding;
.super Lio/fabric/sdk/android/Kit;
.source "Onboarding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/Kit",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private applicationLabel:Ljava/lang/String;

.field private installerPackageName:Ljava/lang/String;

.field private final kits:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/Kit;",
            ">;"
        }
    .end annotation
.end field

.field private packageInfo:Landroid/content/pm/PackageInfo;

.field private packageManager:Landroid/content/pm/PackageManager;

.field private packageName:Ljava/lang/String;

.field private final requestFactory:Lio/fabric/sdk/android/services/network/HttpRequestFactory;

.field private targetAndroidSdkVersion:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/Kit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "kits":Ljava/util/Collection;, "Ljava/util/Collection<Lio/fabric/sdk/android/Kit;>;"
    invoke-direct {p0}, Lio/fabric/sdk/android/Kit;-><init>()V

    .line 41
    iput-object p1, p0, Lio/fabric/sdk/android/Onboarding;->kits:Ljava/util/Collection;

    .line 42
    new-instance v0, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/Onboarding;->requestFactory:Lio/fabric/sdk/android/services/network/HttpRequestFactory;

    .line 43
    return-void
.end method

.method private buildAppRequest(Lio/fabric/sdk/android/services/settings/IconRequest;Ljava/util/Collection;)Lio/fabric/sdk/android/services/settings/AppRequestData;
    .registers 17
    .param p1, "iconRequest"    # Lio/fabric/sdk/android/services/settings/IconRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/services/settings/IconRequest;",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/Kit;",
            ">;)",
            "Lio/fabric/sdk/android/services/settings/AppRequestData;"
        }
    .end annotation

    .prologue
    .line 163
    .line 12094
    .local p2, "sdkKits":Ljava/util/Collection;, "Ljava/util/Collection<Lio/fabric/sdk/android/Kit;>;"
    iget-object v13, p0, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 164
    .local v13, "context":Landroid/content/Context;
    new-instance v0, Lio/fabric/sdk/android/services/common/ApiKey;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/common/ApiKey;-><init>()V

    invoke-static {v13}, Lio/fabric/sdk/android/services/common/ApiKey;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "apiKey":Ljava/lang/String;
    invoke-static {v13}, Lio/fabric/sdk/android/services/common/CommonUtils;->resolveBuildId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 167
    .local v12, "buildId":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v12, v0, v3

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->createInstanceIdFrom([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, "instanceId":Ljava/lang/String;
    iget-object v0, p0, Lio/fabric/sdk/android/Onboarding;->installerPackageName:Ljava/lang/String;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->determineFrom(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    move-result-object v0

    .line 13021
    iget v7, v0, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->id:I

    .line 13087
    .local v7, "source":I
    iget-object v0, p0, Lio/fabric/sdk/android/Kit;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    .line 13276
    iget-object v2, v0, Lio/fabric/sdk/android/services/common/IdManager;->appIdentifier:Ljava/lang/String;

    .line 171
    .local v2, "appIdentifier":Ljava/lang/String;
    new-instance v0, Lio/fabric/sdk/android/services/settings/AppRequestData;

    iget-object v3, p0, Lio/fabric/sdk/android/Onboarding;->versionName:Ljava/lang/String;

    iget-object v4, p0, Lio/fabric/sdk/android/Onboarding;->versionCode:Ljava/lang/String;

    iget-object v6, p0, Lio/fabric/sdk/android/Onboarding;->applicationLabel:Ljava/lang/String;

    iget-object v8, p0, Lio/fabric/sdk/android/Onboarding;->targetAndroidSdkVersion:Ljava/lang/String;

    const-string/jumbo v9, "0"

    move-object v10, p1

    move-object/from16 v11, p2

    invoke-direct/range {v0 .. v11}, Lio/fabric/sdk/android/services/settings/AppRequestData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/settings/IconRequest;Ljava/util/Collection;)V

    return-object v0
.end method

.method private doInBackground()Ljava/lang/Boolean;
    .registers 12

    .prologue
    .line 75
    .line 5094
    iget-object v0, p0, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 75
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->getAppIconHashOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 76
    .local v9, "iconHash":Ljava/lang/String;
    const/4 v7, 0x0

    .line 77
    .local v7, "appConfigured":Z
    const/4 v10, 0x0

    .line 6038
    .local v10, "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    :try_start_8
    # getter for: Lio/fabric/sdk/android/services/settings/Settings$LazyHolder;->INSTANCE:Lio/fabric/sdk/android/services/settings/Settings;
    invoke-static {}, Lio/fabric/sdk/android/services/settings/Settings$LazyHolder;->access$100()Lio/fabric/sdk/android/services/settings/Settings;

    move-result-object v0

    .line 80
    iget-object v2, p0, Lio/fabric/sdk/android/Onboarding;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    iget-object v3, p0, Lio/fabric/sdk/android/Onboarding;->requestFactory:Lio/fabric/sdk/android/services/network/HttpRequestFactory;

    iget-object v4, p0, Lio/fabric/sdk/android/Onboarding;->versionCode:Ljava/lang/String;

    iget-object v5, p0, Lio/fabric/sdk/android/Onboarding;->versionName:Ljava/lang/String;

    invoke-direct {p0}, Lio/fabric/sdk/android/Onboarding;->getOverridenSpiEndpoint()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lio/fabric/sdk/android/services/settings/Settings;->initialize(Lio/fabric/sdk/android/Kit;Lio/fabric/sdk/android/services/common/IdManager;Lio/fabric/sdk/android/services/network/HttpRequestFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/settings/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/settings/Settings;->loadSettingsData()Z

    .line 7038
    # getter for: Lio/fabric/sdk/android/services/settings/Settings$LazyHolder;->INSTANCE:Lio/fabric/sdk/android/services/settings/Settings;
    invoke-static {}, Lio/fabric/sdk/android/services/settings/Settings$LazyHolder;->access$100()Lio/fabric/sdk/android/services/settings/Settings;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/settings/Settings;->awaitSettingsData()Lio/fabric/sdk/android/services/settings/SettingsData;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_27} :catch_64

    move-result-object v10

    .line 90
    :goto_28
    if-eqz v10, :cond_5f

    .line 92
    :try_start_2a
    iget-object v1, v10, Lio/fabric/sdk/android/services/settings/SettingsData;->appData:Lio/fabric/sdk/android/services/settings/AppSettingsData;

    iget-object v2, p0, Lio/fabric/sdk/android/Onboarding;->kits:Ljava/util/Collection;

    .line 7107
    const/4 v0, 0x1

    .line 7109
    const-string/jumbo v3, "new"

    iget-object v4, v1, Lio/fabric/sdk/android/services/settings/AppSettingsData;->status:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 8094
    iget-object v0, p0, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 7138
    invoke-static {v0, v9}, Lio/fabric/sdk/android/services/settings/IconRequest;->build(Landroid/content/Context;Ljava/lang/String;)Lio/fabric/sdk/android/services/settings/IconRequest;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lio/fabric/sdk/android/Onboarding;->buildAppRequest(Lio/fabric/sdk/android/services/settings/IconRequest;Ljava/util/Collection;)Lio/fabric/sdk/android/services/settings/AppRequestData;

    move-result-object v0

    .line 7140
    new-instance v2, Lio/fabric/sdk/android/services/settings/CreateAppSpiCall;

    invoke-direct {p0}, Lio/fabric/sdk/android/Onboarding;->getOverridenSpiEndpoint()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lio/fabric/sdk/android/services/settings/AppSettingsData;->url:Ljava/lang/String;

    iget-object v4, p0, Lio/fabric/sdk/android/Onboarding;->requestFactory:Lio/fabric/sdk/android/services/network/HttpRequestFactory;

    invoke-direct {v2, p0, v3, v1, v4}, Lio/fabric/sdk/android/services/settings/CreateAppSpiCall;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/HttpRequestFactory;)V

    invoke-virtual {v2, v0}, Lio/fabric/sdk/android/services/settings/CreateAppSpiCall;->invoke(Lio/fabric/sdk/android/services/settings/AppRequestData;)Z

    move-result v0

    .line 7111
    if-eqz v0, :cond_73

    .line 9038
    # getter for: Lio/fabric/sdk/android/services/settings/Settings$LazyHolder;->INSTANCE:Lio/fabric/sdk/android/services/settings/Settings;
    invoke-static {}, Lio/fabric/sdk/android/services/settings/Settings$LazyHolder;->access$100()Lio/fabric/sdk/android/services/settings/Settings;

    move-result-object v0

    .line 7114
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/settings/Settings;->loadSettingsSkippingCache()Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_5e} :catch_ba

    move-result v7

    .line 97
    :cond_5f
    :goto_5f
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 86
    :catch_64
    move-exception v8

    .line 87
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, "Error dealing with settings"

    invoke-interface {v0, v1, v2, v8}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28

    .line 7117
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_73
    :try_start_73
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, "Failed to create app with Crashlytics service."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7119
    const/4 v7, 0x0

    goto :goto_5f

    .line 7121
    :cond_83
    const-string/jumbo v3, "configured"

    iget-object v4, v1, Lio/fabric/sdk/android/services/settings/AppSettingsData;->status:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 10038
    # getter for: Lio/fabric/sdk/android/services/settings/Settings$LazyHolder;->INSTANCE:Lio/fabric/sdk/android/services/settings/Settings;
    invoke-static {}, Lio/fabric/sdk/android/services/settings/Settings$LazyHolder;->access$100()Lio/fabric/sdk/android/services/settings/Settings;

    move-result-object v0

    .line 7123
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/settings/Settings;->loadSettingsSkippingCache()Z

    move-result v7

    goto :goto_5f

    .line 7124
    :cond_97
    iget-boolean v3, v1, Lio/fabric/sdk/android/services/settings/AppSettingsData;->updateRequired:Z

    if-eqz v3, :cond_b8

    .line 7127
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 11094
    iget-object v3, p0, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 10149
    invoke-static {v3, v9}, Lio/fabric/sdk/android/services/settings/IconRequest;->build(Landroid/content/Context;Ljava/lang/String;)Lio/fabric/sdk/android/services/settings/IconRequest;

    move-result-object v3

    .line 11157
    invoke-direct {p0, v3, v2}, Lio/fabric/sdk/android/Onboarding;->buildAppRequest(Lio/fabric/sdk/android/services/settings/IconRequest;Ljava/util/Collection;)Lio/fabric/sdk/android/services/settings/AppRequestData;

    move-result-object v2

    .line 11158
    new-instance v3, Lio/fabric/sdk/android/services/settings/UpdateAppSpiCall;

    invoke-direct {p0}, Lio/fabric/sdk/android/Onboarding;->getOverridenSpiEndpoint()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v1, Lio/fabric/sdk/android/services/settings/AppSettingsData;->url:Ljava/lang/String;

    iget-object v5, p0, Lio/fabric/sdk/android/Onboarding;->requestFactory:Lio/fabric/sdk/android/services/network/HttpRequestFactory;

    invoke-direct {v3, p0, v4, v1, v5}, Lio/fabric/sdk/android/services/settings/UpdateAppSpiCall;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/HttpRequestFactory;)V

    invoke-virtual {v3, v2}, Lio/fabric/sdk/android/services/settings/UpdateAppSpiCall;->invoke(Lio/fabric/sdk/android/services/settings/AppRequestData;)Z
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_b8} :catch_ba

    :cond_b8
    move v7, v0

    goto :goto_5f

    .line 93
    :catch_ba
    move-exception v8

    .line 94
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, "Error performing auto configuration."

    invoke-interface {v0, v1, v2, v8}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5f
.end method

.method private getOverridenSpiEndpoint()Ljava/lang/String;
    .registers 3

    .prologue
    .line 176
    .line 14094
    iget-object v0, p0, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 176
    const-string/jumbo v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->getStringsFileValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic doInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Lio/fabric/sdk/android/Onboarding;->doInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    const-string/jumbo v0, "io.fabric.sdk.android:fabric"

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    const-string/jumbo v0, "1.2.0.37"

    return-object v0
.end method

.method protected final onPreExecute()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 53
    .line 1087
    :try_start_1
    iget-object v2, p0, Lio/fabric/sdk/android/Kit;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    .line 53
    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/IdManager;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/fabric/sdk/android/Onboarding;->installerPackageName:Ljava/lang/String;

    .line 1094
    iget-object v2, p0, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 54
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lio/fabric/sdk/android/Onboarding;->packageManager:Landroid/content/pm/PackageManager;

    .line 2094
    iget-object v2, p0, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 55
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/fabric/sdk/android/Onboarding;->packageName:Ljava/lang/String;

    .line 56
    iget-object v2, p0, Lio/fabric/sdk/android/Onboarding;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lio/fabric/sdk/android/Onboarding;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iput-object v2, p0, Lio/fabric/sdk/android/Onboarding;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 57
    iget-object v2, p0, Lio/fabric/sdk/android/Onboarding;->packageInfo:Landroid/content/pm/PackageInfo;

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/fabric/sdk/android/Onboarding;->versionCode:Ljava/lang/String;

    .line 58
    iget-object v2, p0, Lio/fabric/sdk/android/Onboarding;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v2, :cond_5b

    const-string/jumbo v2, "0.0"

    :goto_37
    iput-object v2, p0, Lio/fabric/sdk/android/Onboarding;->versionName:Ljava/lang/String;

    .line 60
    iget-object v2, p0, Lio/fabric/sdk/android/Onboarding;->packageManager:Landroid/content/pm/PackageManager;

    .line 3094
    iget-object v3, p0, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 60
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/fabric/sdk/android/Onboarding;->applicationLabel:Ljava/lang/String;

    .line 4094
    iget-object v2, p0, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 63
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/fabric/sdk/android/Onboarding;->targetAndroidSdkVersion:Ljava/lang/String;

    .line 66
    const/4 v1, 0x1

    .line 70
    :goto_5a
    return v1

    .line 58
    :cond_5b
    iget-object v2, p0, Lio/fabric/sdk/android/Onboarding;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_5f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_5f} :catch_60

    goto :goto_37

    .line 67
    :catch_60
    move-exception v0

    .line 68
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string/jumbo v3, "Fabric"

    const-string/jumbo v4, "Failed init"

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5a
.end method
