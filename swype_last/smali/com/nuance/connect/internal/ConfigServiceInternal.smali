.class public Lcom/nuance/connect/internal/ConfigServiceInternal;
.super Lcom/nuance/connect/internal/AbstractService;

# interfaces
.implements Lcom/nuance/connect/api/ConfigService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/ConfigServiceInternal$7;
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

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field refreshListener:Lcom/nuance/connect/internal/Property$IntegerValueListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

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

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CONNECTION_LIMIT:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_NETWORK_IDLE_TIMEOUT:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_REPORTING_ALLOWED:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_BUILD_PROPERTIES_FILTER:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_PLATFORM_UPDATE_ENABLED:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CUSTOMER_SETTINGS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CONFIG_UPDATED:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/internal/ConfigServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .registers 6

    invoke-direct {p0}, Lcom/nuance/connect/internal/AbstractService;-><init>()V

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

    iput-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->concurrentConnectionLimit:Lcom/nuance/connect/internal/Property$IntegerValueListener;

    new-instance v0, Lcom/nuance/connect/internal/ConfigServiceInternal$3;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConfigServiceInternal$3;-><init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->downloadIdleTimeout:Lcom/nuance/connect/internal/Property$IntegerValueListener;

    new-instance v0, Lcom/nuance/connect/internal/ConfigServiceInternal$4;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConfigServiceInternal$4;-><init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->foregroundDataListener:Lcom/nuance/connect/internal/Property$StringValueListener;

    new-instance v0, Lcom/nuance/connect/internal/ConfigServiceInternal$5;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConfigServiceInternal$5;-><init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->backgroundDataListener:Lcom/nuance/connect/internal/Property$StringValueListener;

    new-instance v0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConfigServiceInternal$6;-><init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

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

    const-string/jumbo v2, "BACKGROUND_DATA_STATE"

    iget-object v3, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->backgroundDataListener:Lcom/nuance/connect/internal/Property$StringValueListener;

    invoke-virtual {v0, v2, v3}, Lcom/nuance/connect/internal/UserSettings;->registerUserSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    const-string/jumbo v2, "FOREGROUND_DATA_STATE"

    iget-object v3, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->foregroundDataListener:Lcom/nuance/connect/internal/Property$StringValueListener;

    invoke-virtual {v0, v2, v3}, Lcom/nuance/connect/internal/UserSettings;->registerUserSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    sget-object v0, Lcom/nuance/connect/internal/AppSettings$Key;->CONFIGURATION_CONNECTION_CONCURRENT_LIMIT:Lcom/nuance/connect/internal/AppSettings$Key;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->concurrentConnectionLimit:Lcom/nuance/connect/internal/Property$IntegerValueListener;

    invoke-virtual {v1, v0, v2}, Lcom/nuance/connect/internal/AppSettings;->registerSettingsListener(Lcom/nuance/connect/internal/AppSettings$Key;Lcom/nuance/connect/internal/Property$ValueListener;)V

    sget-object v0, Lcom/nuance/connect/internal/AppSettings$Key;->DOWNLOAD_IDLE_TIMEOUT:Lcom/nuance/connect/internal/AppSettings$Key;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->downloadIdleTimeout:Lcom/nuance/connect/internal/Property$IntegerValueListener;

    invoke-virtual {v1, v0, v2}, Lcom/nuance/connect/internal/AppSettings;->registerSettingsListener(Lcom/nuance/connect/internal/AppSettings$Key;Lcom/nuance/connect/internal/Property$ValueListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/ConfigServiceInternal;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendPollingFrequency()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/connect/internal/ConfigServiceInternal;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendConnectionConcurrentLimit()V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/connect/internal/ConfigServiceInternal;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendDownloadIdleTimeout()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/connect/internal/ConfigServiceInternal;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendForegroundDataState()V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/connect/internal/ConfigServiceInternal;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendBackgroundDataState()V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/util/Logger$Log;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/connect/internal/ConfigServiceInternal;Lcom/nuance/connect/host/service/BuildSettings$Property;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConfigServiceInternal;->getProperty(Lcom/nuance/connect/host/service/BuildSettings$Property;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/connect/internal/ConfigServiceInternal;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendReportingAllowed()V

    return-void
.end method

.method static synthetic access$900()[Lcom/nuance/connect/internal/common/InternalMessages;
    .registers 1

    sget-object v0, Lcom/nuance/connect/internal/ConfigServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-object v0
.end method

.method private getProperty(Lcom/nuance/connect/host/service/BuildSettings$Property;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    sget-object v1, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/host/service/BuildSettings;

    if-eqz v0, :cond_28

    if-eqz p1, :cond_28

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->VERSION:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {p1, v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    return-object v0

    :cond_1b
    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->OEM_ID:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {p1, v1}, Lcom/nuance/connect/host/service/BuildSettings$Property;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getOemId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_28
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private sendBackgroundDataState()V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "ConfigService.sendBackgroundDataState()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/UserSettings;->getBackgroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Lcom/nuance/connect/internal/ClientBinder;->isBound()Z

    move-result v2

    if-eqz v2, :cond_29

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_BACKGROUND_DATA:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    :cond_29
    return-void
.end method

.method private sendConnectionConcurrentLimit()V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "ConfigService.sendConnectionConcurrentLimit()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/AppSettings;->getConnectionConcurrentLimit()I

    move-result v1

    if-ltz v1, :cond_23

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CONNECTION_LIMIT:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    :cond_23
    return-void
.end method

.method private sendDownloadIdleTimeout()V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "ConfigService.sendDownloadIdleTimeout()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getDownloadIdleTimeout()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_19

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    :cond_19
    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_NETWORK_IDLE_TIMEOUT:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    :cond_28
    return-void
.end method

.method private sendForegroundDataState()V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "ConfigService.sendForegroundDataState()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/UserSettings;->getForegroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Lcom/nuance/connect/internal/ClientBinder;->isBound()Z

    move-result v2

    if-eqz v2, :cond_29

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_FOREGROUND_DATA:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    :cond_29
    return-void
.end method

.method private sendPollingFrequency()V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/AppSettings;->getRefreshInterval()I

    move-result v1

    if-ltz v1, :cond_1b

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_POLLING_FREQUENCY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method

.method private sendReportingAllowed()V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "ConfigService.sendReportingAllowed"

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
.method public deleteConfigurationProperty(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->deleteConfigurationProperty(Ljava/lang/String;)V

    return-void
.end method

.method public getActiveLanguages()[I
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLanguages:[I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLanguages:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_c
.end method

.method public getActiveLocale()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getBackgroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->getBackgroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->getConfigurationProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionConcurrentLimit()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getConnectionConcurrentLimit()I

    move-result v0

    return v0
.end method

.method public getCurrentVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getCurrentVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomExternalConfiguration(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "EXT_CONF_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    return-object v0

    :cond_1e
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method

.method public getCustomExternalConfigurationKeys()[Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string/jumbo v1, "EXT_CONF_ALL_KEYS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-static {v0, v1}, Lcom/nuance/connect/util/StringUtils;->stringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getCustomerString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .registers 2

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadIdleTimeout()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getDownloadIdleTimeout()I

    move-result v0

    return v0
.end method

.method public getForegroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->getForegroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v0

    return-object v0
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getInitialVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getInitialVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitializationTimestamp()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getInitializationTimestamp()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getMinimumRefreshInterval()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getMinimumRefreshInterval()I

    move-result v0

    return v0
.end method

.method public getRefreshInterval()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getRefreshInterval()I

    move-result v0

    return v0
.end method

.method getServiceName()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSwyperId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->getSwyperId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsageDataState()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isDataCollectionAccepted()Z

    move-result v0

    return v0
.end method

.method public sendLanguageInfo()V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "ConfigService.sendLanguageInfo()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "DEFAULT_KEY"

    iget-object v3, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLanguages:[I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_UPDATE_CURRENT_LANGUAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v2, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    return-void
.end method

.method protected sendLocaleInfo()V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLocale:Ljava/util/Locale;

    if-eqz v1, :cond_15

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_UPDATE_CURRENT_LOCALE:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    :cond_15
    return-void
.end method

.method public setActiveLanguages([I)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLanguages:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_d

    iput-object p1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLanguages:[I

    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendLanguageInfo()V

    :cond_d
    return-void
.end method

.method setActiveLocale(Ljava/util/Locale;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "setActiveLocale()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->activeLocale:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendLocaleInfo()V

    return-void
.end method

.method public setBackgroundNetworkState(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/UserSettings;->setBackgroundNetworkState(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)V

    return-void
.end method

.method public setConfigurationProperty(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/connect/internal/AppSettings;->setConfigurationProperty(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setConnectionConcurrentLimit(I)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setConnectionConcurrentLimit(I)V

    return-void
.end method

.method public setCurrentVersion(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setCurrentVersion(Ljava/lang/String;)V

    return-void
.end method

.method public setCustomerString(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setCustomerString(Ljava/lang/String;)V

    return-void
.end method

.method protected setDeviceId(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setDeviceId(Ljava/lang/String;)V

    return-void
.end method

.method public setDownloadIdleTimeout(I)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setDownloadIdleTimeout(I)V

    return-void
.end method

.method public setForegroundNetworkState(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/UserSettings;->setForegroundNetworkState(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)V

    return-void
.end method

.method public setInitialVersion(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setInitialVersion(Ljava/lang/String;)V

    return-void
.end method

.method public setInitializationTimestamp(Ljava/lang/Long;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setInitializationTimestamp(Ljava/lang/Long;)V

    return-void
.end method

.method public setLogLevel(I)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setLogLevel(I)V

    return-void
.end method

.method public setMinimumSSLProtocol(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setMinimumSSLProtocol(Ljava/lang/String;)V

    return-void
.end method

.method public setRefreshInterval(I)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setRefreshInterval(I)V

    return-void
.end method

.method protected setSwyperId(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/AppSettings;->setSwyperId(Ljava/lang/String;)V

    return-void
.end method

.method public setUsageDataState(Z)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/UserSettings;->setDataCollectionAccepted(Z)V

    return-void
.end method
