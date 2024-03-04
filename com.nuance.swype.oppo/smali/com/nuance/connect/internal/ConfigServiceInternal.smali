.class public Lcom/nuance/connect/internal/ConfigServiceInternal;
.super Lcom/nuance/connect/internal/AbstactService;

# interfaces
.implements Lcom/nuance/connect/api/ConfigService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/ConfigServiceInternal$9;
    }
.end annotation


# static fields
.field private static final MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;


# instance fields
.field private activeLanguages:[I

.field private activeLocale:Ljava/util/Locale;

.field backgroundDataListener:Lcom/nuance/connect/internal/Property$StringValueListener;

.field concurrentConnectionLimit:Lcom/nuance/connect/internal/Property$IntegerValueListener;

.field private connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field downloadIdleTimeout:Lcom/nuance/connect/internal/Property$IntegerValueListener;

.field foregroundDataListener:Lcom/nuance/connect/internal/Property$StringValueListener;

.field private handler:Lcom/nuance/connect/internal/ConnectHandler;

.field private lastSentLocation:Ljava/lang/String;

.field private locationEnabled:Z

.field private locationListener:Lcom/nuance/connect/location/ConnectLocationListener;

.field private locationSettings:Lcom/nuance/connect/location/LocationSettings;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field refreshListener:Lcom/nuance/connect/internal/Property$IntegerValueListener;

.field userAllowDataCollection:Lcom/nuance/connect/internal/Property$BooleanValueListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_OEM_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_LANGUAGE_INFO:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CORE_VERSIONS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_SDK_VERSION:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_FOREGROUND_DATA:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_BACKGROUND_DATA:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_APPLICATION_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CUSTOMER_STRING:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_SWYPER_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_DEVICE_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_LANGUAGES_FOR_CORES:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CONNECTION_LIMIT:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_NETWORK_IDLE_TIMEOUT:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_LOCATION:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_REPORTING_ALLOWED:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_BUILD_PROPERTIES_FILTER:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_PLATFORM_UPDATE_ENABLED:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/internal/ConfigServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 4

    invoke-direct {p0}, Lcom/nuance/connect/internal/AbstactService;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Lcom/nuance/connect/internal/ConfigServiceInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConfigServiceInternal$1;-><init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->refreshListener:Lcom/nuance/connect/internal/Property$IntegerValueListener;

    new-instance v0, Lcom/nuance/connect/internal/ConfigServiceInternal$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConfigServiceInternal$2;-><init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->userAllowDataCollection:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    new-instance v0, Lcom/nuance/connect/internal/ConfigServiceInternal$3;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConfigServiceInternal$3;-><init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->concurrentConnectionLimit:Lcom/nuance/connect/internal/Property$IntegerValueListener;

    new-instance v0, Lcom/nuance/connect/internal/ConfigServiceInternal$4;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConfigServiceInternal$4;-><init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->downloadIdleTimeout:Lcom/nuance/connect/internal/Property$IntegerValueListener;

    new-instance v0, Lcom/nuance/connect/internal/ConfigServiceInternal$5;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConfigServiceInternal$5;-><init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->foregroundDataListener:Lcom/nuance/connect/internal/Property$StringValueListener;

    new-instance v0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConfigServiceInternal$6;-><init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->backgroundDataListener:Lcom/nuance/connect/internal/Property$StringValueListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->locationSettings:Lcom/nuance/connect/location/LocationSettings;

    new-instance v0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConfigServiceInternal$7;-><init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->locationListener:Lcom/nuance/connect/location/ConnectLocationListener;

    new-instance v0, Lcom/nuance/connect/internal/ConfigServiceInternal$8;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConfigServiceInternal$8;-><init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    iput-object p1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/AppSettings$Key;->CONFIGURATION_REFRESH_INTERVAL:Lcom/nuance/connect/internal/AppSettings$Key;

    iget-object v3, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->refreshListener:Lcom/nuance/connect/internal/Property$IntegerValueListener;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/internal/AppSettings;->registerSettingsListener(Lcom/nuance/connect/internal/AppSettings$Key;Lcom/nuance/connect/internal/Property$ValueListener;)V

    const-string v2, "BACKGROUND_DATA_STATE"

    iget-object v3, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->backgroundDataListener:Lcom/nuance/connect/internal/Property$StringValueListener;

    invoke-virtual {v0, v2, v3}, Lcom/nuance/connect/internal/UserSettings;->registerUserSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    const-string v2, "FOREGROUND_DATA_STATE"

    iget-object v3, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->foregroundDataListener:Lcom/nuance/connect/internal/Property$StringValueListener;

    invoke-virtual {v0, v2, v3}, Lcom/nuance/connect/internal/UserSettings;->registerUserSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    const-string v2, "USER_ALLOW_USAGE_COLLECTION"

    iget-object v3, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->userAllowDataCollection:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    invoke-virtual {v0, v2, v3}, Lcom/nuance/connect/internal/UserSettings;->registerUserSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    sget-object v0, Lcom/nuance/connect/internal/AppSettings$Key;->CONFIGURATION_CONNECTION_CONCURRENT_LIMIT:Lcom/nuance/connect/internal/AppSettings$Key;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->concurrentConnectionLimit:Lcom/nuance/connect/internal/Property$IntegerValueListener;

    invoke-virtual {v1, v0, v2}, Lcom/nuance/connect/internal/AppSettings;->registerSettingsListener(Lcom/nuance/connect/internal/AppSettings$Key;Lcom/nuance/connect/internal/Property$ValueListener;)V

    sget-object v0, Lcom/nuance/connect/internal/AppSettings$Key;->DOWNLOAD_IDLE_TIMEOUT:Lcom/nuance/connect/internal/AppSettings$Key;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->downloadIdleTimeout:Lcom/nuance/connect/internal/Property$IntegerValueListener;

    invoke-virtual {v1, v0, v2}, Lcom/nuance/connect/internal/AppSettings;->registerSettingsListener(Lcom/nuance/connect/internal/AppSettings$Key;Lcom/nuance/connect/internal/Property$ValueListener;)V

    invoke-virtual {v1}, Lcom/nuance/connect/internal/AppSettings;->getLastSentLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->lastSentLocation:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->enableLocation(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/ConfigServiceInternal;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendPollingFrequency()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/connect/internal/ConfigServiceInternal;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConfigServiceInternal;->enableLocation(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/nuance/connect/internal/ConfigServiceInternal;Lcom/nuance/connect/host/service/BuildSettings$Property;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConfigServiceInternal;->getProperty(Lcom/nuance/connect/host/service/BuildSettings$Property;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/connect/internal/ConfigServiceInternal;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendReportingAllowed()V

    return-void
.end method

.method static synthetic access$1200()[Lcom/nuance/connect/internal/common/InternalMessages;
    .locals 1

    sget-object v0, Lcom/nuance/connect/internal/ConfigServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/connect/internal/ConfigServiceInternal;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendConnectionConcurrentLimit()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/connect/internal/ConfigServiceInternal;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendDownloadIdleTimeout()V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/connect/internal/ConfigServiceInternal;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendForegroundDataState()V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/connect/internal/ConfigServiceInternal;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendBackgroundDataState()V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/connect/internal/ConfigServiceInternal;Lcom/nuance/connect/location/ConnectLocation;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConfigServiceInternal;->processLocationUpdate(Lcom/nuance/connect/location/ConnectLocation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/nuance/connect/internal/ConfigServiceInternal;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendLocation(Ljava/lang/String;)V

    return-void
.end method

.method private compareLocations(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/nuance/connect/location/ConnectLocationManager;->getLatLong(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    invoke-static {p2}, Lcom/nuance/connect/location/ConnectLocationManager;->getLatLong(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_0

    const/high16 v0, 0x447a0000    # 1000.0f

    invoke-static {v1, v2, v0}, Lcom/nuance/connect/location/ConnectLocationManager;->compareLocations(Landroid/util/Pair;Landroid/util/Pair;F)Z

    move-result v0

    goto :goto_0
.end method

.method private enableLocation(Z)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->locationSettings:Lcom/nuance/connect/location/LocationSettings;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->locationEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/nuance/connect/location/LocationSettings;

    sget-object v1, Lcom/nuance/connect/location/LocationSettings$LocationMode;->PASSIVE:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    invoke-direct {v0, v1}, Lcom/nuance/connect/location/LocationSettings;-><init>(Lcom/nuance/connect/location/LocationSettings$LocationMode;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->locationSettings:Lcom/nuance/connect/location/LocationSettings;

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->locationSettings:Lcom/nuance/connect/location/LocationSettings;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/location/LocationSettings;->addType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->locationSettings:Lcom/nuance/connect/location/LocationSettings;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/location/LocationSettings;->addType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->locationSettings:Lcom/nuance/connect/location/LocationSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/connect/location/LocationSettings;->setActiveSearch(Z)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->locationListener:Lcom/nuance/connect/location/ConnectLocationListener;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->locationSettings:Lcom/nuance/connect/location/LocationSettings;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->registerLocationListener(Lcom/nuance/connect/location/ConnectLocationListener;Lcom/nuance/connect/location/LocationSettings;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->locationEnabled:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->locationSettings:Lcom/nuance/connect/location/LocationSettings;

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->locationListener:Lcom/nuance/connect/location/ConnectLocationListener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->unregisterLocationListener(Lcom/nuance/connect/location/ConnectLocationListener;)V

    goto :goto_0
.end method

.method private getProperty(Lcom/nuance/connect/host/service/BuildSettings$Property;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    sget-object v1, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/host/service/BuildSettings;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->VERSION:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {p1, v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->OEM_ID:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {p1, v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getOemId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processLocationUpdate(Lcom/nuance/connect/location/ConnectLocation;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nuance/connect/location/ConnectLocation;->getLocation()Landroid/location/Location;

    move-result-object v1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/DecimalFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    const-string v2, "#.###"

    invoke-virtual {v0, v2}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/connect/internal/AppSettings;->setMostRecentLocation(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "processLocationUpdate() - "

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private sendBackgroundDataState()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "ConfigService.sendBackgroundDataState()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/UserSettings;->getBackgroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_BACKGROUND_DATA:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private sendConnectionConcurrentLimit()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "ConfigService.sendConnectionConcurrentLimit()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/AppSettings;->getConnectionConcurrentLimit()I

    move-result v1

    if-ltz v1, :cond_0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CONNECTION_LIMIT:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private sendDownloadIdleTimeout()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "ConfigService.sendDownloadIdleTimeout()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getDownloadIdleTimeout()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_NETWORK_IDLE_TIMEOUT:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private sendForegroundDataState()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "ConfigService.sendForegroundDataState()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/UserSettings;->getForegroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_FOREGROUND_DATA:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private sendLocation(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->lastSentLocation:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/nuance/connect/internal/ConfigServiceInternal;->compareLocations(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_LOCATION:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->lastSentLocation:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setLastSentLocation(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private sendPollingFrequency()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/AppSettings;->getRefreshInterval()I

    move-result v1

    if-ltz v1, :cond_0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_POLLING_FREQUENCY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private sendReportingAllowed()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "ConfigService.sendReportingAllowed"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_REPORTING_ALLOWED:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/AppSettings;->isReportingAllowed()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getActiveLanguages()[I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLanguages:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLanguages:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_0
.end method

.method public getActiveLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getBackgroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->getBackgroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionConcurrentLimit()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getConnectionConcurrentLimit()I

    move-result v0

    return v0
.end method

.method protected getCoresForLanguages([I)[I
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    sget-object v2, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getLanguageCoreMap()Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    array-length v4, p1

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget v5, p1, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    new-array v2, v0, [I

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v0, v1, 0x1

    aput v4, v2, v1

    move v1, v0

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public getCurrentVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getCurrentVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getCustomerString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .locals 1

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadIdleTimeout()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getDownloadIdleTimeout()I

    move-result v0

    return v0
.end method

.method public getForegroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->getForegroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v0

    return-object v0
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getInitialVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getInitialVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitializationTimestamp()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getInitializationTimestamp()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getMinimumRefreshInterval()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getMinimumRefreshInterval()I

    move-result v0

    return v0
.end method

.method public getRefreshInterval()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getRefreshInterval()I

    move-result v0

    return v0
.end method

.method getServiceName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSwyperId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getSwyperId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsageDataState()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isDataCollectionAccepted()Z

    move-result v0

    return v0
.end method

.method public sendLanguageInfo()V
    .locals 5

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "ConfigService.sendLanguageInfo()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLanguages:[I

    invoke-virtual {p0, v1}, Lcom/nuance/connect/internal/ConfigServiceInternal;->getCoresForLanguages([I)[I

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "DEFAULT_KEY"

    iget-object v4, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLanguages:[I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v3, "LANGUAGE_CATEGORY"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_UPDATE_CURRENT_LANGUAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    return-void
.end method

.method protected sendLocaleInfo()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLocale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_UPDATE_CURRENT_LOCALE:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setActiveLanguages([I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLanguages:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLanguages:[I

    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendLanguageInfo()V

    :cond_0
    return-void
.end method

.method setActiveLocale(Ljava/util/Locale;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "setActiveLocale()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLocale:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendLocaleInfo()V

    return-void
.end method

.method public setBackgroundNetworkState(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/UserSettings;->setBackgroundNetworkState(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)V

    return-void
.end method

.method public setConnectionConcurrentLimit(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setConnectionConcurrentLimit(I)V

    return-void
.end method

.method public setCurrentVersion(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setCurrentVersion(Ljava/lang/String;)V

    return-void
.end method

.method public setCustomerString(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setCustomerString(Ljava/lang/String;)V

    return-void
.end method

.method protected setDeviceId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setDeviceId(Ljava/lang/String;)V

    return-void
.end method

.method public setDownloadIdleTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setDownloadIdleTimeout(I)V

    return-void
.end method

.method public setForegroundNetworkState(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/UserSettings;->setForegroundNetworkState(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)V

    return-void
.end method

.method public setInitialVersion(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setInitialVersion(Ljava/lang/String;)V

    return-void
.end method

.method public setInitializationTimestamp(Ljava/lang/Long;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setInitializationTimestamp(Ljava/lang/Long;)V

    return-void
.end method

.method public setLogLevel(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setLogLevel(I)V

    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setRefreshInterval(I)V

    return-void
.end method

.method protected setSwyperId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setSwyperId(Ljava/lang/String;)V

    return-void
.end method

.method public setUsageDataState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/UserSettings;->setDataCollectionAccepted(Z)V

    return-void
.end method
