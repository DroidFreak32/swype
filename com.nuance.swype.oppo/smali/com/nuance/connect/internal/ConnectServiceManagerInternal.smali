.class public Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/ConnectServiceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;,
        Lcom/nuance/connect/internal/ConnectServiceManagerInternal$IncomingHandler;
    }
.end annotation


# static fields
.field private static final MINIMUM_RESTART:I = 0x2710

.field private static final RETRYCONNECTION_PROTECTION:I = 0x124f80

.field private static final connectivityFilter:Landroid/content/IntentFilter;

.field private static final connectivityFilterSpec:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field private static instance:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field private static final localeFilter:Landroid/content/IntentFilter;


# instance fields
.field private final actionHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/nuance/connect/util/ActionFilter;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/util/ActionDelegateCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private appFilesFolder:Ljava/lang/String;

.field private appSettings:Lcom/nuance/connect/internal/AppSettings;

.field private final connectionCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/nuance/connect/api/ConnectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private connectivityReceiver:Landroid/content/BroadcastReceiver;

.field private context:Landroid/content/Context;

.field private currentBackgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

.field private currentForegroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

.field private currentNetworkState:Lcom/nuance/connect/system/NetworkState;

.field private datamgr:Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

.field private defaultStore:Lcom/nuance/connect/store/PersistentDataStore;

.field private final devLog:Lcom/nuance/connect/util/Logger$Log;

.field private final handlerRegistry:Lcom/nuance/connect/internal/HandlerRegistry;

.field protected hostInterface:Lcom/nuance/connect/host/service/HostInterface;

.field private isLicensed:Z

.field private lastRefresh:J

.field private lastRetry:J

.field private lifecycleCallback:Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;

.field private final localeCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/nuance/connect/api/LocaleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private localeReciever:Landroid/content/BroadcastReceiver;

.field private locationManager:Lcom/nuance/connect/location/ConnectLocationManager;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private final mHandler:Lcom/nuance/connect/internal/ConnectServiceManagerInternal$IncomingHandler;

.field private minimumRefreshInterval:I

.field private final oemLog:Lcom/nuance/connect/util/Logger$Log;

.field private refresh:Ljava/lang/Runnable;

.field private refreshHandler:Landroid/os/Handler;

.field private restart:Ljava/lang/Runnable;

.field private retryConnection:Ljava/lang/Runnable;

.field private serviceBinder:Lcom/nuance/connect/internal/ClientBinderInternal;

.field private final services:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/AbstactService;",
            ">;"
        }
    .end annotation
.end field

.field private userSettings:Lcom/nuance/connect/internal/UserSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectivityFilter:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->localeFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/nuance/connect/host/service/HostInterface;)V
    .locals 8

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->actionHandlers:Ljava/util/HashMap;

    new-instance v0, Lcom/nuance/connect/internal/HandlerRegistry;

    invoke-direct {v0}, Lcom/nuance/connect/internal/HandlerRegistry;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->handlerRegistry:Lcom/nuance/connect/internal/HandlerRegistry;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    new-instance v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$IncomingHandler;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$IncomingHandler;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->mHandler:Lcom/nuance/connect/internal/ConnectServiceManagerInternal$IncomingHandler;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->devLog:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->refreshHandler:Landroid/os/Handler;

    iput-wide v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->lastRefresh:J

    iput-wide v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->lastRetry:J

    const/16 v0, 0xe10

    iput v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->minimumRefreshInterval:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectionCallbacks:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->localeCallbacks:Ljava/util/HashSet;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->isLicensed:Z

    new-instance v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$1;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$2;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->localeReciever:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$3;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$3;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->datamgr:Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    new-instance v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$4;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$4;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->restart:Ljava/lang/Runnable;

    new-instance v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$5;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$5;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->refresh:Ljava/lang/Runnable;

    new-instance v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$6;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$6;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->retryConnection:Ljava/lang/Runnable;

    new-instance v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->lifecycleCallback:Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;

    iput-object p1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->appFilesFolder:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->hostInterface:Lcom/nuance/connect/host/service/HostInterface;

    sput-object p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->instance:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    const-string v0, "com.nuance.swype.connect.store.FilePreference"

    invoke-static {p1, v0}, Lcom/nuance/connect/store/DataStoreFactory;->getDataStore(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->defaultStore:Lcom/nuance/connect/store/PersistentDataStore;

    sget-object v0, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-interface {p2, v0}, Lcom/nuance/connect/host/service/HostInterface;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v7}, Lcom/nuance/connect/host/service/BuildSettings;->isDeveloperLogEnabled()Z

    move-result v0

    invoke-interface {v7}, Lcom/nuance/connect/host/service/BuildSettings;->getLogLevel()I

    move-result v1

    sget-object v2, Lcom/nuance/connect/util/Logger$OutputMode;->ANDROID_LOG:Lcom/nuance/connect/util/Logger$OutputMode;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger;->configure(ZILcom/nuance/connect/util/Logger$OutputMode;Ljava/io/File;)V

    new-instance v0, Lcom/nuance/connect/internal/UserSettings;

    new-instance v1, Lcom/nuance/connect/store/FileStore;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->appFilesFolder:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/nuance/connect/store/FileStore;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/nuance/connect/host/service/BuildSettings;->getDlmSyncDefault()Z

    move-result v2

    invoke-interface {v7}, Lcom/nuance/connect/host/service/BuildSettings;->getUpdateLivingLanguageByDefault()Z

    move-result v3

    invoke-interface {v7}, Lcom/nuance/connect/host/service/BuildSettings;->getForegroundNetworkDefault()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7}, Lcom/nuance/connect/host/service/BuildSettings;->getBackgroundNetworkDefault()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7}, Lcom/nuance/connect/host/service/BuildSettings;->getLivingLanguageMaxEventsDefault()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/UserSettings;-><init>(Lcom/nuance/connect/store/PersistentDataStore;ZZLjava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->userSettings:Lcom/nuance/connect/internal/UserSettings;

    new-instance v0, Lcom/nuance/connect/internal/AppSettings;

    new-instance v1, Lcom/nuance/connect/store/FileStore;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->appFilesFolder:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/nuance/connect/store/FileStore;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/nuance/connect/internal/AppSettings;-><init>(Lcom/nuance/connect/store/PersistentDataStore;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->appSettings:Lcom/nuance/connect/internal/AppSettings;

    invoke-interface {v7}, Lcom/nuance/connect/host/service/BuildSettings;->getMinimumRefreshIntervalDefault()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->minimumRefreshInterval:I

    new-instance v0, Lcom/nuance/connect/location/ConnectLocationManager;

    invoke-interface {v7}, Lcom/nuance/connect/host/service/BuildSettings;->getLocationLevel()I

    move-result v1

    invoke-interface {v7}, Lcom/nuance/connect/host/service/BuildSettings;->getLocationDistance()I

    move-result v2

    invoke-interface {v7}, Lcom/nuance/connect/host/service/BuildSettings;->getLocationDelay()I

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/nuance/connect/location/ConnectLocationManager;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->locationManager:Lcom/nuance/connect/location/ConnectLocationManager;

    new-instance v0, Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConfigServiceInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    new-instance v0, Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    new-instance v0, Lcom/nuance/connect/internal/DocumentServiceInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/DocumentServiceInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->onConnectivityChanged()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->setActiveLocale(Ljava/util/Locale;)V

    sget-object v0, Lcom/nuance/connect/internal/AppSettings$Key;->OEM_LOG_LEVEL:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings$Key;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$7;

    invoke-direct {v1, p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$7;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->registerAppSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/store/PersistentDataStore;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->defaultStore:Lcom/nuance/connect/store/PersistentDataStore;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/internal/ClientBinderInternal;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->serviceBinder:Lcom/nuance/connect/internal/ClientBinderInternal;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->sendConnectConfig()V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;Landroid/os/Handler;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->handleMessage(Landroid/os/Handler;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal$IncomingHandler;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->mHandler:Lcom/nuance/connect/internal/ConnectServiceManagerInternal$IncomingHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/internal/HandlerRegistry;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->handlerRegistry:Lcom/nuance/connect/internal/HandlerRegistry;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    return-object v0
.end method

.method private addService(Lcom/nuance/connect/internal/AbstactService;)V
    .locals 6

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/AbstactService;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/nuance/connect/internal/AbstactService;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/AbstactService;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/AbstactService;->getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->registerServiceHandlers([Lcom/nuance/connect/internal/ConnectHandler;)V

    :cond_2
    return-void
.end method

.method private getService(Lcom/nuance/connect/common/ConnectFeature;)Lcom/nuance/connect/internal/AbstactService;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/AbstactService;

    return-object v0
.end method

.method private handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 12

    const-wide/16 v10, 0x2710

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->handlerRegistry:Lcom/nuance/connect/internal/HandlerRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/internal/HandlerRegistry;->tryHandleMessage(Landroid/os/Handler;Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v1, p2, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->handlerRegistry:Lcom/nuance/connect/internal/HandlerRegistry;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/HandlerRegistry;->getRegisteredHandlers()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_HANDLERS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->devLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "MESSAGE_HOST_CLIENT_START_COMPLETE"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/internal/ClientBinder;->setClientComplete()V

    instance-of v1, v0, Lcom/nuance/connect/internal/ClientBinderInternal;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/nuance/connect/internal/ClientBinderInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->processQueuedMessages()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Connection status: "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " message: "

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->notifyConnectionStatus(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/internal/ClientBinder;->getLock()[I

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->devLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "MESSAGE_HOST_ON_SERVICE_SHUTDOWN "

    const-string v4, "DEFAULT_KEY"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "DEFAULT_KEY"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/internal/ClientBinder;->getLastMessageSent()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->devLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Restart time from now in millis: "

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, " last sent time: "

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v0, v6, v7, v8, v9}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    cmp-long v0, v2, v10

    if-lez v0, :cond_2

    cmp-long v0, v4, v10

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/internal/ClientBinder;->pause()V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->restart:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->restart:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->devLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Ignoring shutdown because it\'s too soon"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :pswitch_5
    const/16 v0, 0xb

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->notifyConnectionStatus(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DEFAULT_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_2
    iput-wide v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->lastRefresh:J

    if-eqz v2, :cond_4

    const/16 v0, 0xa

    :goto_3
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->notifyConnectionStatus(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_2

    :cond_4
    const/16 v0, 0x10

    goto :goto_3

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->isLicensed:Z

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Licensing has changed. Is licensed: "

    iget-boolean v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->isLicensed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->isLicensed:Z

    if-nez v0, :cond_5

    const/16 v0, 0xe

    const-string v1, "Build is unlicensed."

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->notifyConnectionStatus(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0xf

    const-string v1, "Build has been licensed."

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->notifyConnectionStatus(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->hostInterface:Lcom/nuance/connect/host/service/HostInterface;

    sget-object v1, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-interface {v0, v1}, Lcom/nuance/connect/host/service/HostInterface;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/host/service/BuildSettings;

    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_ANONYMOUS_BUILD:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->isAnonymousBuild()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static make(Landroid/content/Context;Lcom/nuance/connect/host/service/HostInterface;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    .locals 1

    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->instance:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->instance:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-direct {v0, p0, p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;-><init>(Landroid/content/Context;Lcom/nuance/connect/host/service/HostInterface;)V

    goto :goto_0
.end method

.method private registerServiceHandlers([Lcom/nuance/connect/internal/ConnectHandler;)V
    .locals 5

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->handlerRegistry:Lcom/nuance/connect/internal/HandlerRegistry;

    invoke-interface {v2}, Lcom/nuance/connect/internal/ConnectHandler;->getHandlerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/connect/internal/HandlerRegistry;->hasHandler(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->handlerRegistry:Lcom/nuance/connect/internal/HandlerRegistry;

    invoke-virtual {v3, v2}, Lcom/nuance/connect/internal/HandlerRegistry;->add(Lcom/nuance/connect/internal/ConnectHandler;)Lcom/nuance/connect/internal/HandlerRegistry;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendConnectConfig()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->hostInterface:Lcom/nuance/connect/host/service/HostInterface;

    sget-object v1, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-interface {v0, v1}, Lcom/nuance/connect/host/service/HostInterface;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getLogLevel()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->appSettings:Lcom/nuance/connect/internal/AppSettings;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/AppSettings;->getLogLevel()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "URL="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getConnectUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\nLOGGING="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_UPDATE_CONFIGURATION:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    return-void
.end method

.method private sendConnectionStatusNotification(Lcom/nuance/connect/system/NetworkState;IZZ)V
    .locals 8

    const/4 v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->userSettings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/UserSettings;->getForegroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v5

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->userSettings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/UserSettings;->getBackgroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v5}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    :goto_0
    invoke-virtual {p1, v6}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p1, v5}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v7

    if-nez v7, :cond_5

    move v4, v0

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectionCallbacks:Ljava/util/HashSet;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectionCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ConnectionCallback;

    if-lez v1, :cond_2

    invoke-interface {v0, p2, v1}, Lcom/nuance/connect/api/ConnectionCallback;->onConnected(II)V

    :cond_2
    if-lez v4, :cond_1

    invoke-interface {v0, v4}, Lcom/nuance/connect/api/ConnectionCallback;->onDisconnected(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {p1, v6}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_8

    invoke-virtual {p1, v5}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_0

    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {p1, v6}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v0

    if-nez v0, :cond_6

    move v4, v2

    goto :goto_1

    :cond_6
    if-eqz p3, :cond_0

    invoke-virtual {p1, v5}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_1

    :cond_7
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_8
    move v1, v4

    goto :goto_0
.end method

.method private sendCurrentConnectionStatus(Lcom/nuance/connect/api/ConnectionCallback;)V
    .locals 10

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->userSettings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/UserSettings;->getForegroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v7

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->userSettings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/UserSettings;->getBackgroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v8

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentNetworkState:Lcom/nuance/connect/system/NetworkState;

    invoke-virtual {v1, v8}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentNetworkState:Lcom/nuance/connect/system/NetworkState;

    invoke-virtual {v1, v7}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iget-object v9, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentNetworkState:Lcom/nuance/connect/system/NetworkState;

    invoke-virtual {v9, v8}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentNetworkState:Lcom/nuance/connect/system/NetworkState;

    invoke-virtual {v9, v7}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v9

    if-nez v9, :cond_4

    :goto_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    :goto_2
    if-lez v1, :cond_0

    invoke-interface {p1, v0, v1}, Lcom/nuance/connect/api/ConnectionCallback;->onConnected(II)V

    :cond_0
    if-lez v2, :cond_1

    invoke-interface {p1, v2}, Lcom/nuance/connect/api/ConnectionCallback;->onDisconnected(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentNetworkState:Lcom/nuance/connect/system/NetworkState;

    invoke-virtual {v1, v8}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentNetworkState:Lcom/nuance/connect/system/NetworkState;

    invoke-virtual {v1, v7}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentNetworkState:Lcom/nuance/connect/system/NetworkState;

    invoke-virtual {v2, v8}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentNetworkState:Lcom/nuance/connect/system/NetworkState;

    invoke-virtual {v2, v7}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v4

    goto :goto_1

    :cond_6
    move v0, v6

    goto :goto_2

    :cond_7
    move v2, v5

    goto :goto_1

    :cond_8
    move v1, v5

    goto :goto_0
.end method


# virtual methods
.method public dispatchAction(Lcom/nuance/connect/util/ConnectAction;)Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->actionHandlers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/util/ActionFilter;

    invoke-virtual {p1}, Lcom/nuance/connect/util/ConnectAction;->getFilter()Lcom/nuance/connect/util/ActionFilter;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nuance/connect/util/ActionFilter;->matches(Lcom/nuance/connect/util/ActionFilter;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/util/ActionDelegateCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/nuance/connect/util/ActionDelegateCallback;->handle(Lcom/nuance/connect/util/ConnectAction;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1}, Lcom/nuance/connect/util/ActionFilter;->isOneShot()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_1
    move-object v2, v0

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method public dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Lcom/nuance/connect/util/ActionFilter;

    invoke-direct {v0, p1, p2}, Lcom/nuance/connect/util/ActionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/nuance/connect/util/ConnectAction;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/nuance/connect/util/ConnectAction;-><init>(Lcom/nuance/connect/util/ActionFilter;Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Lcom/nuance/connect/util/ConnectAction;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected getAppFilesFolder()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->appFilesFolder:Ljava/lang/String;

    return-object v0
.end method

.method getAppSettings()Lcom/nuance/connect/internal/AppSettings;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->appSettings:Lcom/nuance/connect/internal/AppSettings;

    return-object v0
.end method

.method protected getBinder()Lcom/nuance/connect/internal/ClientBinder;
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->serviceBinder:Lcom/nuance/connect/internal/ClientBinderInternal;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/connect/internal/ClientBinderInternal;

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->mHandler:Lcom/nuance/connect/internal/ConnectServiceManagerInternal$IncomingHandler;

    iget-object v3, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->lifecycleCallback:Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/nuance/connect/internal/ClientBinderInternal;-><init>(Landroid/content/Context;Lcom/nuance/connect/api/ConnectServiceManager;Landroid/os/Handler;Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->serviceBinder:Lcom/nuance/connect/internal/ClientBinderInternal;

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->serviceBinder:Lcom/nuance/connect/internal/ClientBinderInternal;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected getDataManager()Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->datamgr:Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    return-object v0
.end method

.method public getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;->$SwitchMap$com$nuance$connect$common$ConnectFeature:[I

    invoke-virtual {p1}, Lcom/nuance/connect/common/ConnectFeature;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Loading service: "

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v2}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/LanguageServiceInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getService(Lcom/nuance/connect/common/ConnectFeature;)Lcom/nuance/connect/internal/AbstactService;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Loading service: "

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v2}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ConfigServiceInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getService(Lcom/nuance/connect/common/ConnectFeature;)Lcom/nuance/connect/internal/AbstactService;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Loading service: "

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->RESOURCES:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v2}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getService(Lcom/nuance/connect/common/ConnectFeature;)Lcom/nuance/connect/internal/AbstactService;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Loading service: "

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->REPORTING:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v2}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/connect/internal/ReportingServiceInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ReportingServiceInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getService(Lcom/nuance/connect/common/ConnectFeature;)Lcom/nuance/connect/internal/AbstactService;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Loading service: "

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->ACCOUNT:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v2}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/connect/internal/AccountServiceInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/AccountServiceInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getService(Lcom/nuance/connect/common/ConnectFeature;)Lcom/nuance/connect/internal/AbstactService;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Loading service: "

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->DLM:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v2}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/DLMConnectorInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    :cond_5
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getService(Lcom/nuance/connect/common/ConnectFeature;)Lcom/nuance/connect/internal/AbstactService;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Loading service: "

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->CATEGORY:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v2}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    :cond_6
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getService(Lcom/nuance/connect/common/ConnectFeature;)Lcom/nuance/connect/internal/AbstactService;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->CATEGORY:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_8
    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->CATEGORY:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Loading service: "

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->SYNC:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v2}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/SyncServiceInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    :cond_7
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getService(Lcom/nuance/connect/common/ConnectFeature;)Lcom/nuance/connect/internal/AbstactService;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Loading service: "

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->DOCUMENTS:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v2}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/connect/internal/DocumentServiceInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/DocumentServiceInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    :cond_8
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getService(Lcom/nuance/connect/common/ConnectFeature;)Lcom/nuance/connect/internal/AbstactService;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->services:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Loading service: "

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->UPDATE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v2}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/PlatformUpdateServiceInternal;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->addService(Lcom/nuance/connect/internal/AbstactService;)V

    :cond_9
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getService(Lcom/nuance/connect/common/ConnectFeature;)Lcom/nuance/connect/internal/AbstactService;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->hostInterface:Lcom/nuance/connect/host/service/HostInterface;

    invoke-interface {v0, p1}, Lcom/nuance/connect/host/service/HostInterface;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getIncomingHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->mHandler:Lcom/nuance/connect/internal/ConnectServiceManagerInternal$IncomingHandler;

    return-object v0
.end method

.method protected getMinimumRefreshInterval()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->minimumRefreshInterval:I

    return v0
.end method

.method public getUserSettings()Lcom/nuance/connect/internal/UserSettings;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->userSettings:Lcom/nuance/connect/internal/UserSettings;

    return-object v0
.end method

.method public isLicensed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->isLicensed:Z

    return v0
.end method

.method public notifyConnectionStatus(ILjava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectionCallbacks:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectionCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ConnectionCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/connect/api/ConnectionCallback;->onConnectionStatus(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method protected onConnectivityChanged()V
    .locals 12

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    new-instance v2, Lcom/nuance/connect/system/NetworkState;

    invoke-direct {v2}, Lcom/nuance/connect/system/NetworkState;-><init>()V

    const/4 v1, -0x1

    iget-object v5, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->userSettings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v5}, Lcom/nuance/connect/internal/UserSettings;->getForegroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v6

    iget-object v5, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->userSettings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v5}, Lcom/nuance/connect/internal/UserSettings;->getBackgroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v8

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    new-instance v1, Lcom/nuance/connect/system/NetworkState;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v1, v5, v10, v11}, Lcom/nuance/connect/system/NetworkState;-><init>(Landroid/net/NetworkInfo;J)V

    move v7, v0

    move-object v5, v1

    :goto_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentNetworkState:Lcom/nuance/connect/system/NetworkState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentNetworkState:Lcom/nuance/connect/system/NetworkState;

    invoke-virtual {v0, v5}, Lcom/nuance/connect/system/NetworkState;->isSame(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentForegroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentBackgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentForegroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v0}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentBackgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v0}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentNetworkState:Lcom/nuance/connect/system/NetworkState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentNetworkState:Lcom/nuance/connect/system/NetworkState;

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentBackgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v0

    invoke-virtual {v5, v8}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v1

    if-eq v0, v1, :cond_6

    :cond_1
    move v0, v4

    :goto_1
    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentNetworkState:Lcom/nuance/connect/system/NetworkState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentNetworkState:Lcom/nuance/connect/system/NetworkState;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentForegroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v1

    invoke-virtual {v5, v6}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v2

    if-eq v1, v2, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    iput-object v5, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentNetworkState:Lcom/nuance/connect/system/NetworkState;

    iput-object v6, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentForegroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    iput-object v8, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->currentBackgroundConfiguration:Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    if-nez v0, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    invoke-direct {p0, v5, v7, v3, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->sendConnectionStatusNotification(Lcom/nuance/connect/system/NetworkState;IZZ)V

    :cond_5
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Connectivity Changed "

    const-string v2, "\nBackgroundhasConnectivity: "

    invoke-virtual {v5, v8}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "\nForegroundhasConnectivity: "

    invoke-virtual {v5, v6}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "\nType: "

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface/range {v0 .. v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_6
    move v0, v3

    goto :goto_1

    :cond_7
    move v7, v1

    move-object v5, v2

    goto/16 :goto_0
.end method

.method public refresh()V
    .locals 6

    const/4 v4, 0x1

    iget-wide v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->lastRefresh:J

    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getMinimumRefreshInterval()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "ACKNOWLEDGEMENT"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_SESSION_POLL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->lastRefresh:J

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getMinimumRefreshInterval()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->lastRefresh:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "refresh delayed: "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, " milliseconds"

    invoke-interface {v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->refreshHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->refresh:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delayed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " milliseconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->notifyConnectionStatus(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->refreshHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->refresh:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public registerActionCallback(Lcom/nuance/connect/util/ActionDelegateCallback;Lcom/nuance/connect/util/ActionFilter;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->actionHandlers:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerActionCallback(Lcom/nuance/connect/util/ActionDelegateCallback;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/util/ActionDelegateCallback;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/util/ActionFilter;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/util/ActionFilter;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->actionHandlers:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerAppSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->appSettings:Lcom/nuance/connect/internal/AppSettings;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/internal/AppSettings;->registerSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    return-void
.end method

.method public registerConnectionCallback(Lcom/nuance/connect/api/ConnectionCallback;)V
    .locals 2

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectionCallbacks:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectionCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->sendCurrentConnectionStatus(Lcom/nuance/connect/api/ConnectionCallback;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerLocaleCallback(Lcom/nuance/connect/api/LocaleCallback;)V
    .locals 2

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->localeCallbacks:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->localeCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerLocationListener(Lcom/nuance/connect/location/ConnectLocationListener;Lcom/nuance/connect/location/LocationSettings;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->locationManager:Lcom/nuance/connect/location/ConnectLocationManager;

    invoke-virtual {v0}, Lcom/nuance/connect/location/ConnectLocationManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isTOSAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isDataCollectionAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->locationManager:Lcom/nuance/connect/location/ConnectLocationManager;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/location/ConnectLocationManager;->registerListener(Lcom/nuance/connect/location/ConnectLocationListener;Lcom/nuance/connect/location/LocationSettings;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerUserSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->userSettings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/internal/UserSettings;->registerUserSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    return-void
.end method

.method public retryConnection()V
    .locals 6

    const-wide/32 v4, 0x124f80

    iget-wide v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->lastRetry:J

    add-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_RETRY_CONNECTION:Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->lastRetry:J

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->lastRetry:J

    sub-long/2addr v0, v2

    sub-long v0, v4, v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "retryConnection() delayed: "

    iget-wide v4, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->lastRetry:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, " milliseconds"

    invoke-interface {v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->refreshHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->retryConnection:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->refreshHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->retryConnection:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public sendConnectionStatus()V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    new-instance v2, Lcom/nuance/connect/system/NetworkState;

    invoke-direct {v2}, Lcom/nuance/connect/system/NetworkState;-><init>()V

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->userSettings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v3}, Lcom/nuance/connect/internal/UserSettings;->getForegroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->userSettings:Lcom/nuance/connect/internal/UserSettings;

    invoke-virtual {v4}, Lcom/nuance/connect/internal/UserSettings;->getBackgroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-static {v5, v3}, Lcom/nuance/connect/system/NetworkState;->isValidConnection(Landroid/net/NetworkInfo;Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v5, v4}, Lcom/nuance/connect/system/NetworkState;->isValidConnection(Landroid/net/NetworkInfo;Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Lcom/nuance/connect/system/NetworkState;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v5, v2, v3}, Lcom/nuance/connect/system/NetworkState;-><init>(Landroid/net/NetworkInfo;J)V

    :goto_0
    invoke-direct {p0, v1, v0, v6, v6}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->sendConnectionStatusNotification(Lcom/nuance/connect/system/NetworkState;IZZ)V

    return-void

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    move v0, v1

    move-object v1, v2

    goto :goto_0
.end method

.method public setActiveLocale(Ljava/util/Locale;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "setActiveLocale("

    const-string v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ConfigService;

    check-cast v0, Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/ConfigServiceInternal;->setActiveLocale(Ljava/util/Locale;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->localeCallbacks:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->localeCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LocaleCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/LocaleCallback;->onLocaleChange(Ljava/util/Locale;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public setHostInterface(Lcom/nuance/connect/host/service/HostInterface;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->hostInterface:Lcom/nuance/connect/host/service/HostInterface;

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectivityFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->localeReciever:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->localeFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/internal/ClientBinder;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/internal/ClientBinder;->stop()V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->localeReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public unregisterActionCallback(Lcom/nuance/connect/util/ActionDelegateCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->actionHandlers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/util/ActionDelegateCallback;

    if-nez v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public unregisterConnectionCallback(Lcom/nuance/connect/api/ConnectionCallback;)V
    .locals 2

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectionCallbacks:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->connectionCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterLocaleCallback(Lcom/nuance/connect/api/LocaleCallback;)V
    .locals 2

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->localeCallbacks:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->localeCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterLocationListener(Lcom/nuance/connect/location/ConnectLocationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->locationManager:Lcom/nuance/connect/location/ConnectLocationManager;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/location/ConnectLocationManager;->unregisterListener(Lcom/nuance/connect/location/ConnectLocationListener;)Z

    return-void
.end method
