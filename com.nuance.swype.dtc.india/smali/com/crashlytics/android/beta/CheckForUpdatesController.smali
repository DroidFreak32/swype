.class final Lcom/crashlytics/android/beta/CheckForUpdatesController;
.super Ljava/lang/Object;
.source "CheckForUpdatesController.java"


# instance fields
.field final beta:Lcom/crashlytics/android/beta/Beta;

.field final betaSettings:Lio/fabric/sdk/android/services/settings/BetaSettingsData;

.field final buildProps:Lcom/crashlytics/android/beta/BuildProperties;

.field final context:Landroid/content/Context;

.field final currentTimeProvider:Lio/fabric/sdk/android/services/common/CurrentTimeProvider;

.field final httpRequestFactory:Lio/fabric/sdk/android/services/network/HttpRequestFactory;

.field final idManager:Lio/fabric/sdk/android/services/common/IdManager;

.field final preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/crashlytics/android/beta/Beta;Lio/fabric/sdk/android/services/common/IdManager;Lio/fabric/sdk/android/services/settings/BetaSettingsData;Lcom/crashlytics/android/beta/BuildProperties;Lio/fabric/sdk/android/services/persistence/PreferenceStore;Lio/fabric/sdk/android/services/common/CurrentTimeProvider;Lio/fabric/sdk/android/services/network/HttpRequestFactory;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "beta"    # Lcom/crashlytics/android/beta/Beta;
    .param p3, "idManager"    # Lio/fabric/sdk/android/services/common/IdManager;
    .param p4, "betaSettings"    # Lio/fabric/sdk/android/services/settings/BetaSettingsData;
    .param p5, "buildProps"    # Lcom/crashlytics/android/beta/BuildProperties;
    .param p6, "prefsStore"    # Lio/fabric/sdk/android/services/persistence/PreferenceStore;
    .param p7, "currentTimeProvider"    # Lio/fabric/sdk/android/services/common/CurrentTimeProvider;
    .param p8, "httpRequestFactory"    # Lio/fabric/sdk/android/services/network/HttpRequestFactory;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->beta:Lcom/crashlytics/android/beta/Beta;

    .line 39
    iput-object p3, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    .line 40
    iput-object p4, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->betaSettings:Lio/fabric/sdk/android/services/settings/BetaSettingsData;

    .line 41
    iput-object p5, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->buildProps:Lcom/crashlytics/android/beta/BuildProperties;

    .line 42
    iput-object p6, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    .line 43
    iput-object p7, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->currentTimeProvider:Lio/fabric/sdk/android/services/common/CurrentTimeProvider;

    .line 44
    iput-object p8, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->httpRequestFactory:Lio/fabric/sdk/android/services/network/HttpRequestFactory;

    .line 45
    return-void
.end method
