.class public final Lcom/nuance/swypeconnect/ac/ACManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACManager$SimpleLock;,
        Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfoImpl;,
        Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfo;,
        Lcom/nuance/swypeconnect/ac/ACManager$ACHostInterface;,
        Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;,
        Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;,
        Lcom/nuance/swypeconnect/ac/ACManager$ACLocation;,
        Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;
    }
.end annotation


# static fields
.field public static final ACCOUNT_SERVICE:Ljava/lang/String; = "ACCOUNT"

.field public static final BUILD_STATUS_LICENSED:I = 0xf

.field public static final BUILD_STATUS_UNLICENSED:I = 0xe

.field public static final CATALOG_SERVICE:Ljava/lang/String; = "CATALOG_SERVICE"

.field public static final CHINESE_CLOUD_PREDICTION:Ljava/lang/String; = "CHINESE_CLOUD_PREDICTION"

.field public static final CHINESE_DICTIONARY_SERVICE:Ljava/lang/String; = "CHINESE_DICTIONARY_SERVICE"

.field public static final CONNECTION_STATUS_CLOUD_CONFIG_UPDATED:I = 0x16

.field public static final CONNECTION_STATUS_DELAYED:I = 0x3

.field public static final CONNECTION_STATUS_INITIALIZATION_COMPLETE:I = 0xd

.field public static final CONNECTION_STATUS_OK:I = 0x1

.field public static final CONNECTION_STATUS_REFRESH_COMPLETED:I = 0xa

.field public static final CONNECTION_STATUS_REFRESH_DELAYED:I = 0xc

.field public static final CONNECTION_STATUS_REFRESH_FAILED:I = 0x10

.field public static final CONNECTION_STATUS_REFRESH_PENDING:I = 0xb

.field public static final CONNECTION_STATUS_STALLED:I = 0x2

.field public static final CONNECTION_STATUS_STALLED_DOWNLOAD:I = 0x8

.field public static final CONNECTION_STATUS_STALLED_HTTP_ERROR:I = 0x7

.field public static final CONNECTION_STATUS_STALLED_JSON_PARSE:I = 0x5

.field public static final CONNECTION_STATUS_STALLED_PROTOCOL_EXCEPTION:I = 0x6

.field public static final CONNECTION_STATUS_STALLED_SSL:I = 0x4

.field public static final CONNECTION_STATUS_STALLED_UNKNOWN_RESPONSE:I = 0x9

.field public static final CONNECTION_STATUS_TOS_DOCUMENT_UPDATED:I = 0x12

.field public static final CONNECTION_STATUS_UPGRADE_DETECTED:I = 0x11

.field public static final CONNECTION_STATUS_USAGE_DOCUMENT_UPDATED:I = 0x13

.field public static final CONNECTION_TYPE_BACKGROUND:I = 0x2

.field public static final CONNECTION_TYPE_FOREGROUND:I = 0x1

.field public static final CONNECT_TYPE_ALL:I = 0x3

.field public static final CORE_ALPHA:I = 0x1

.field public static final CORE_CHINESE:I = 0x3

.field public static final CORE_JAPANESE:I = 0x4

.field public static final CORE_KOREAN:I = 0x2

.field private static final DEFAULT_SERVICES:[Ljava/lang/String;

.field public static final DEVICE_LOCATION_CHANGE:I = 0x15

.field public static final DEVICE_SERVICE:Ljava/lang/String; = "DEVICE"

.field public static final DLM_SYNC_SERVICE:Ljava/lang/String; = "DLM_SYNC_SERVICE"

.field public static final LANGUAGE_COMPAT_SERVICE:Ljava/lang/String; = "LANGUAGE_COMPAT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LANGUAGE_SERVICE:Ljava/lang/String; = "LANGUAGE"

.field public static final LIVING_LANGUAGE_SERVICE:Ljava/lang/String; = "LIVING_LANGUAGE"

.field public static final PACKAGE_UPDATER_SERVICE:Ljava/lang/String; = "PACKAGE_UPDATER_SERVICE"

.field public static final REPORTING_SERVICE:Ljava/lang/String; = "REPORTING_SERVICE"

.field public static final SCANNER_SERVICE:Ljava/lang/String; = "SCANNER_SERVICE"


# instance fields
.field private applicationId:Ljava/lang/String;

.field private buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

.field private buildInfo:Lcom/nuance/swypeconnect/ac/ACBuildInfo;

.field private buildSettings:Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;

.field private configService:Lcom/nuance/connect/api/ConfigService;

.field private configuration:Lcom/nuance/swypeconnect/ac/ACConfiguration;

.field private connect:Lcom/nuance/connect/api/ConnectServiceManager;

.field private final connectionCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;",
            "Lcom/nuance/connect/api/ConnectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected context:Landroid/content/Context;

.field private coreVersionAlpha:Ljava/lang/String;

.field private coreVersionChinese:Ljava/lang/String;

.field private coreVersionJapanese:Ljava/lang/String;

.field private coreVersionKorean:Ljava/lang/String;

.field private dlmConnector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

.field private isInitialized:Z

.field private volatile isShutdown:Z

.field private volatile isStarted:Z

.field private language:Lcom/nuance/swypeconnect/ac/ACLanguage;

.field private legaldocs:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

.field private final locationChangedListener:Lcom/nuance/connect/internal/Property$StringValueListener;

.field private final log:Lcom/nuance/connect/util/Logger$Log;

.field private final selectedServices:[Ljava/lang/String;

.field private final services:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swypeconnect/ac/ACService;",
            ">;"
        }
    .end annotation
.end field

.field protected servicesToInitialize:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final startLock:Lcom/nuance/swypeconnect/ac/ACManager$SimpleLock;

.field private store:Lcom/nuance/connect/store/PersistentDataStore;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "LANGUAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "LANGUAGE_COMPAT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "LIVING_LANGUAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "CHINESE_DICTIONARY_SERVICE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "ACCOUNT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "SCANNER_SERVICE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "DLM_SYNC_SERVICE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "REPORTING_SERVICE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "PACKAGE_UPDATER_SERVICE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "CHINESE_CLOUD_PREDICTION"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACManager;->DEFAULT_SERVICES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACManager;->DEFAULT_SERVICES:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swypeconnect/ac/ACManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfoImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfoImpl;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACManager;-><init>(Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfo;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACManager$SimpleLock;

    invoke-direct {v0}, Lcom/nuance/swypeconnect/ac/ACManager$SimpleLock;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->startLock:Lcom/nuance/swypeconnect/ac/ACManager$SimpleLock;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connectionCallbacks:Ljava/util/Map;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACManager$1;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->locationChangedListener:Lcom/nuance/connect/internal/Property$StringValueListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;

    # getter for: Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfo;->context:Landroid/content/Context;
    invoke-static {p1}, Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfo;->access$300(Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfo;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/connect/util/EncryptUtils;->defaultSecretKey(Landroid/content/Context;)Ljava/lang/String;

    # getter for: Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfo;->applicationId:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfo;->access$400(Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->applicationId:Ljava/lang/String;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    invoke-direct {v0}, Lcom/nuance/swypeconnect/ac/ACBuildConfig;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;

    invoke-direct {v1}, Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;-><init>()V

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACManager;->applicationId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;-><init>(Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;Lcom/nuance/swypeconnect/ac/ACBuildConfig;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfo;->services()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_110

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfo;->services()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->selectedServices:[Ljava/lang/String;

    :goto_64
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfo;->legacySecretKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->setLegacySecretKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->context:Landroid/content/Context;

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACManager$ACHostInterface;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;

    invoke-direct {v1, v2}, Lcom/nuance/swypeconnect/ac/ACManager$ACHostInterface;-><init>(Lcom/nuance/connect/host/service/BuildSettings;)V

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->make(Landroid/content/Context;Lcom/nuance/connect/host/service/HostInterface;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/PersistentDataStore;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    const-string/jumbo v1, "LOCATION_COUNTRY"

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->locationChangedListener:Lcom/nuance/connect/internal/Property$StringValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/UserSettings;->registerUserSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->CUSTOMER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SC-SDK Version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->getBuildTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ConfigService;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDeviceService;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-direct {v0, p0, v1}, Lcom/nuance/swypeconnect/ac/ACDeviceService;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/connect/api/ConfigService;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACService;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->DLM:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v0, v2}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/DLMConnector;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct {v1, v0, v2, p0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;-><init>(Lcom/nuance/connect/api/DLMConnector;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)V

    iput-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->dlmConnector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACConfiguration;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct {v0, p0, v1}, Lcom/nuance/swypeconnect/ac/ACConfiguration;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/connect/store/PersistentDataStore;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configuration:Lcom/nuance/swypeconnect/ac/ACConfiguration;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-object v0, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->legalDocumentsClass:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLegalDocumentsFactory;->getACLegalDocuments(Ljava/lang/String;Lcom/nuance/connect/api/ConnectServiceManager;)Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->legaldocs:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    return-void

    :cond_110
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->selectedServices:[Ljava/lang/String;

    goto/16 :goto_64
.end method

.method static synthetic access$000(Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/connect/util/Logger$Log;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swypeconnect/ac/ACManager;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connectionCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACManager;->DEFAULT_SERVICES:[Ljava/lang/String;

    return-object v0
.end method

.method private checkRequestedServices([Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_a

    new-array p1, v0, [Ljava/lang/String;

    :cond_a
    array-length v2, p1

    :goto_b
    if-ge v0, v2, :cond_1b

    aget-object v3, p1, v0

    invoke-direct {p0, v3}, Lcom/nuance/swypeconnect/ac/ACManager;->isRequestedServiceAllowed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private configureACSDK([Ljava/lang/String;)V
    .registers 7

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACManager;->checkRequestedServices([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v0, "LANGUAGE"

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string/jumbo v0, "LANGUAGE_COMPAT"

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    :cond_1f
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Loading service: "

    const-string/jumbo v3, "LANGUAGE"

    invoke-interface {v0, v1, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-object v1, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->languageDownloadServiceClass:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v3, Lcom/nuance/connect/common/ConnectFeature;->LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v0, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LanguageService;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-static {v1, v0, v3, p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceFactory;->getACLanguageDownloadService(Ljava/lang/String;Lcom/nuance/connect/api/LanguageService;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v0, v1

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACService;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v0, v1

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACService;

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "LANGUAGE_COMPAT"

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Loading service: "

    const-string/jumbo v4, "LANGUAGE_COMPAT"

    invoke-interface {v0, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-direct {v0, p0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_71
    const-string/jumbo v0, "CHINESE_DICTIONARY_SERVICE"

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Loading service: "

    const-string/jumbo v3, "CHINESE_DICTIONARY_SERVICE"

    invoke-interface {v0, v1, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v3, Lcom/nuance/connect/common/ConnectFeature;->ADDON_DICTIONARIES:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v0, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AddonDictionariesService;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct {v1, v0, v3, p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;-><init>(Lcom/nuance/connect/api/AddonDictionariesService;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9f
    const-string/jumbo v0, "LIVING_LANGUAGE"

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c5

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Loading service: "

    const-string/jumbo v3, "LIVING_LANGUAGE"

    invoke-interface {v0, v1, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct {v0, v1, v3}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;-><init>(Lcom/nuance/connect/api/ConnectServiceManager;Lcom/nuance/connect/store/PersistentDataStore;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c5
    const-string/jumbo v0, "ACCOUNT"

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Loading service: "

    const-string/jumbo v3, "ACCOUNT"

    invoke-interface {v0, v1, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACAccountService;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v3, Lcom/nuance/connect/common/ConnectFeature;->ACCOUNT:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v0, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AccountService;

    invoke-direct {v1, v0}, Lcom/nuance/swypeconnect/ac/ACAccountService;-><init>(Lcom/nuance/connect/api/AccountService;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACAccountService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f1
    const-string/jumbo v0, "SCANNER_SERVICE"

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_121

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Loading service: "

    const-string/jumbo v3, "SCANNER_SERVICE"

    invoke-interface {v0, v1, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACScannerService;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACManager;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v4, Lcom/nuance/connect/common/ConnectFeature;->DLM:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v0, v4}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/DLMConnector;

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct {v1, v3, v0, v4, p0}, Lcom/nuance/swypeconnect/ac/ACScannerService;-><init>(Landroid/content/Context;Lcom/nuance/connect/api/DLMConnector;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_121
    const-string/jumbo v0, "DLM_SYNC_SERVICE"

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_157

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Loading service: "

    const-string/jumbo v3, "DLM_SYNC_SERVICE"

    invoke-interface {v0, v1, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->SYNC:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/SyncService;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v4, Lcom/nuance/connect/common/ConnectFeature;->ACCOUNT:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v1, v4}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/api/AccountService;

    invoke-direct {v3, p0, v0, v1}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/connect/api/SyncService;Lcom/nuance/connect/api/AccountService;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_157
    const-string/jumbo v0, "REPORTING_SERVICE"

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_189

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Loading service: "

    const-string/jumbo v3, "REPORTING_SERVICE"

    invoke-interface {v0, v1, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACReportingService;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v3, Lcom/nuance/connect/common/ConnectFeature;->REPORTING:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v0, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ReportingService;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-object v3, v3, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->reportingLogHelperClass:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct {v1, p0, v0, v3, v4}, Lcom/nuance/swypeconnect/ac/ACReportingService;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/connect/api/ReportingService;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_189
    const-string/jumbo v0, "PACKAGE_UPDATER_SERVICE"

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b5

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Loading service: "

    const-string/jumbo v3, "PACKAGE_UPDATER_SERVICE"

    invoke-interface {v0, v1, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v3, Lcom/nuance/connect/common/ConnectFeature;->UPDATE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v0, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/PlatformUpdateService;

    invoke-direct {v1, v0}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;-><init>(Lcom/nuance/connect/api/PlatformUpdateService;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b5
    const-string/jumbo v0, "CHINESE_CLOUD_PREDICTION"

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1eb

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Loading service: "

    const-string/jumbo v3, "CHINESE_CLOUD_PREDICTION"

    invoke-interface {v0, v1, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-object v1, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->ccpServiceClass:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v3, Lcom/nuance/connect/common/ConnectFeature;->CHINESE_PREDICTION:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v0, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ChinesePredictionService;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-static {v1, v0, v3, p0}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceFactory;->getACChinesePredictionService(Ljava/lang/String;Lcom/nuance/connect/api/ChinesePredictionService;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v0, v1

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACService;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACService;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1eb
    const-string/jumbo v0, "CATALOG_SERVICE"

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_221

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Loading service: "

    const-string/jumbo v2, "CATALOG_SERVICE"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-object v1, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->catalogServiceClass:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->CATALOG:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v0, v2}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/CatalogService;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-static {v1, v0, v2, p0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceFactory;->getACCatalogService(Ljava/lang/String;Lcom/nuance/connect/api/CatalogService;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v0, v1

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACService;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACService;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_221
    return-void
.end method

.method private getConnectClass()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string/jumbo v0, "com.nuance.connect.service.ConnectClient"

    :try_start_3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isConnectClientClassExist()Z
    .registers 2

    :try_start_0
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnectClass()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method private isRequestedServiceAllowed(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const-string/jumbo v1, "PACKAGE_UPDATER_SERVICE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-boolean v1, v1, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->packageUpdateEnabled:Z

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "PACKAGE_UPDATER_SERVICE is not enabled in this build."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :goto_18
    return v0

    :cond_19
    const-string/jumbo v1, "REPORTING_SERVICE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-boolean v1, v1, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->reportingServiceEnabled:Z

    if-nez v1, :cond_31

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "REPORTING_SERVICE is not enabled in this build."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_18

    :cond_31
    const/4 v0, 0x1

    goto :goto_18
.end method

.method private setupInitialization()V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_40

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACService;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACService;->requireInitialization()Z

    move-result v1

    if-eqz v1, :cond_13

    monitor-enter p0

    :try_start_2c
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACService;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    goto :goto_13

    :catchall_3d
    move-exception v0

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_2c .. :try_end_3f} :catchall_3d

    throw v0

    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0

    :cond_43
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->dlmConnector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->requireInitialization()Z

    move-result v0

    if-eqz v0, :cond_58

    monitor-enter p0

    :try_start_4c
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->dlmConnector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    :cond_58
    return-void

    :catchall_59
    move-exception v0

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_4c .. :try_end_5b} :catchall_59

    throw v0
.end method

.method private validApplicationId(Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->getAppKeyStarts()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_13

    move v0, v1

    goto :goto_4

    :cond_13
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->getAppKeyStarts()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4
.end method


# virtual methods
.method protected final convertJSONTasksToServiceTasks(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_44

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "CDB_AVAILABLE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string/jumbo v3, "CHINESE_DICTIONARY_SERVICE"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "LIVING_LANGUAGE"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_2d
    const-string/jumbo v4, "CDB_LIST_UPDATE_"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    const-string/jumbo v3, "CHINESE_DICTIONARY_SERVICE"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "LIVING_LANGUAGE"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_42} :catch_43

    goto :goto_2a

    :catch_43
    move-exception v0

    :cond_44
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5e

    const-string/jumbo v0, ""

    :goto_4d
    return-object v0

    :cond_4e
    :try_start_4e
    const-string/jumbo v4, "LANGUAGE_LIST_UPDATED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const-string/jumbo v3, "LANGUAGE"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5d} :catch_43

    goto :goto_2a

    :cond_5e
    const-string/jumbo v0, ","

    invoke-static {v1, v0}, Lcom/nuance/connect/util/StringUtils;->implode(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4d
.end method

.method public final getBuildInfo()Lcom/nuance/swypeconnect/ac/ACBuildInfo;
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isShutdown:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildInfo:Lcom/nuance/swypeconnect/ac/ACBuildInfo;

    if-nez v0, :cond_11

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACBuildInfo;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACBuildInfo;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildInfo:Lcom/nuance/swypeconnect/ac/ACBuildInfo;

    :cond_11
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildInfo:Lcom/nuance/swypeconnect/ac/ACBuildInfo;

    goto :goto_5
.end method

.method protected final getBuildSettings()Lcom/nuance/connect/host/service/BuildSettings;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;

    return-object v0
.end method

.method public final getConfiguration()Lcom/nuance/swypeconnect/ac/ACConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configuration:Lcom/nuance/swypeconnect/ac/ACConfiguration;

    return-object v0
.end method

.method protected final getConnect()Lcom/nuance/connect/api/ConnectServiceManager;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    return-object v0
.end method

.method protected final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getCoreVersion(I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/16 v2, 0x7b

    packed-switch p1, :pswitch_data_26

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const-string/jumbo v1, "You must specify a proper core type"

    invoke-direct {v0, v2, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :pswitch_e
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionAlpha:Ljava/lang/String;

    :goto_10
    if-nez v0, :cond_24

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const-string/jumbo v1, "The core version was not set for the specified core"

    invoke-direct {v0, v2, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :pswitch_1b
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionKorean:Ljava/lang/String;

    goto :goto_10

    :pswitch_1e
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionChinese:Ljava/lang/String;

    goto :goto_10

    :pswitch_21
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionJapanese:Ljava/lang/String;

    goto :goto_10

    :cond_24
    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_e
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
    .end packed-switch
.end method

.method public final getDLMConnector()Lcom/nuance/swypeconnect/ac/ACDLMConnector;
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isShutdown:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->dlmConnector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    goto :goto_5
.end method

.method public final getLanguageSettings()Lcom/nuance/swypeconnect/ac/ACLanguage;
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isShutdown:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    if-nez v0, :cond_11

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguage;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACLanguage;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    :cond_11
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    goto :goto_5
.end method

.method public final getLegalDocuments()Lcom/nuance/swypeconnect/ac/ACLegalDocuments;
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isShutdown:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->legaldocs:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    goto :goto_5
.end method

.method public final getLocation()Lcom/nuance/swypeconnect/ac/ACManager$ACLocation;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectStarted()Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x69

    const-string/jumbo v2, "start() must be called first"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_12
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->isLocationServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x80

    const-string/jumbo v2, "Location services are disabled in this build. Please contact Nuance if you wish to use location services."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_25
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->getLocationCountry()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_37

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACManager$ACLocation;

    invoke-direct {v0, v2, v1}, Lcom/nuance/swypeconnect/ac/ACManager$ACLocation;-><init>(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACManager$1;)V

    :goto_36
    return-object v0

    :cond_37
    move-object v0, v1

    goto :goto_36
.end method

.method final getReportingService()Lcom/nuance/swypeconnect/ac/ACReportingService;
    .registers 3

    :try_start_0
    const-string/jumbo v0, "REPORTING_SERVICE"

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACReportingService;
    :try_end_9
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-object v0

    :catch_a
    move-exception v0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Could not get the reporting service"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/16 v4, 0x65

    const/4 v3, 0x4

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "getService called before calling start."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x69

    const-string/jumbo v2, "Please call start()."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1b
    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isShutdown:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "getService called after shutdown."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x77

    const-string/jumbo v2, "SDK has been shutdown. Please create a new instance with a clean object."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_32
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-nez v0, :cond_45

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x81

    const-string/jumbo v2, "This build is no longer licensed for use."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_45
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->isLocationServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_70

    const-string/jumbo v0, "CATALOG_SERVICE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->locationServiceEnabled:Z

    if-nez v0, :cond_65

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const-string/jumbo v1, "Catalog service is not allowed in this build.  It requires the location service which is disabled for this build."

    invoke-direct {v0, v4, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_65
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x6d

    const-string/jumbo v2, "Catalog service requires the location service which is disabled."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_70
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Service not available. "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_9a
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACService;

    invoke-virtual {v0, v3}, Lcom/nuance/swypeconnect/ac/ACService;->requiresDocument(I)Z

    move-result v1

    if-eqz v1, :cond_db

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->legaldocs:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    invoke-interface {v1, v3}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->userHasAcceptedDocumentByType(I)Z

    move-result v1

    if-nez v1, :cond_db

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "A service has been requested that requires DATA_OPT_IN, but DATA_OPT_IN not accepted."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v2, 0x7e

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Please Accept the Data Opt-in before requesting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACService;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_db
    invoke-virtual {v0, v2}, Lcom/nuance/swypeconnect/ac/ACService;->requiresDocument(I)Z

    move-result v1

    if-eqz v1, :cond_114

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->legaldocs:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    invoke-interface {v1, v2}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->userHasAcceptedDocumentByType(I)Z

    move-result v1

    if-nez v1, :cond_114

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "A service has been requested that requires TOS, but TOS not accepted."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v2, 0x68

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Please Accept the TOS before requesting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACService;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_114
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACService;->dependenciesMet()Z

    move-result v1

    if-nez v1, :cond_15d

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "All required dependencies are not met for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v2, 0x84

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "All required dependencies are not met for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACService;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_15d
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACService;

    return-object v0
.end method

.method public final isConnectInitialized()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isInitialized:Z

    return v0
.end method

.method public final isConnectStarted()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    return v0
.end method

.method public final refresh()V
    .registers 3

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isShutdown:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isInitialized:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ConnectServiceManager;->refresh(Z)V

    :cond_12
    return-void
.end method

.method public final registerConnectionCallback(Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;)V
    .registers 5

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACManager$2;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swypeconnect/ac/ACManager$2;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connectionCallbacks:Ljava/util/Map;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connectionCallbacks:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_14

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v1, v0}, Lcom/nuance/connect/api/ConnectServiceManager;->registerConnectionCallback(Lcom/nuance/connect/api/ConnectionCallback;)V

    return-void

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public final retryConnection()V
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isShutdown:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->retryConnection()V

    :cond_d
    return-void
.end method

.method final declared-synchronized serviceInitialized(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "ServiceInitialized("

    const-string/jumbo v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1d
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getInitializationTimestamp()Ljava/lang/Long;

    move-result-object v0

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ConfigService;->setInitialVersion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ConfigService;->setCurrentVersion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ConfigService;->setInitializationTimestamp(Ljava/lang/Long;)V

    :cond_5a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isInitialized:Z

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    const/16 v1, 0xd

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/api/ConnectServiceManager;->notifyConnectionStatus(ILjava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;
    :try_end_6a
    .catchall {:try_start_1 .. :try_end_6a} :catchall_7b

    :cond_6a
    :goto_6a
    monitor-exit p0

    return-void

    :cond_6c
    :try_start_6c
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "remaining uninitialized services: "

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7a
    .catchall {:try_start_6c .. :try_end_7a} :catchall_7b

    goto :goto_6a

    :catchall_7b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setCoreVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/high16 v5, 0x200000

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x7b

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    if-eqz v0, :cond_15

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x6d

    const-string/jumbo v2, "setCoreVersions() cannot be called after start."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_15
    if-eqz p1, :cond_36

    const-string/jumbo v0, "\\d+\\.\\d+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Alpha does not match major.minor version pattern with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_36
    if-eqz p1, :cond_61

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionAlpha:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->dlmConnector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v5, v4}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->setDLMSize(III)V

    :goto_40
    if-eqz p4, :cond_64

    const-string/jumbo v0, "\\d+\\.\\d+"

    invoke-static {v0, p4}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_64

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Korean does not match major.minor version pattern with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_61
    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionAlpha:Ljava/lang/String;

    goto :goto_40

    :cond_64
    if-eqz p4, :cond_8f

    iput-object p4, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionKorean:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->dlmConnector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5, v4}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->setDLMSize(III)V

    :goto_6e
    if-eqz p2, :cond_92

    const-string/jumbo v0, "\\d+\\.\\d+"

    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_92

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Chinese does not match major.minor version pattern with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_8f
    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionKorean:Ljava/lang/String;

    goto :goto_6e

    :cond_92
    if-eqz p2, :cond_b7

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionChinese:Ljava/lang/String;

    :goto_96
    if-eqz p3, :cond_ba

    const-string/jumbo v0, "\\d+\\.\\d+"

    invoke-static {v0, p3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ba

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Japanese does not match major.minor version pattern with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_b7
    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionChinese:Ljava/lang/String;

    goto :goto_96

    :cond_ba
    if-eqz p3, :cond_cc

    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionJapanese:Ljava/lang/String;

    :goto_be
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionAlpha:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionChinese:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionJapanese:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionKorean:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->setCoreVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_cc
    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionJapanese:Ljava/lang/String;

    goto :goto_be
.end method

.method final setLocationServiceAllowed(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->locationServiceEnabled:Z

    if-nez v0, :cond_11

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x6d

    const-string/jumbo v2, "Location services are disabled in this build. Please contact Nuance if you wish to use location services."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectStarted()Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x78

    const-string/jumbo v2, "must be configured before calling start()"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_22
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->setLocationServiceEnabled(Z)V

    return-void
.end method

.method final shutDownServices()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACService;->shutdown()V

    goto :goto_a

    :cond_20
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->dlmConnector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->shutdown()V

    return-void
.end method

.method public final shutdown()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->startLock:Lcom/nuance/swypeconnect/ac/ACManager$SimpleLock;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager$SimpleLock;->lock()V

    :try_start_5
    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Shutdown ACManager"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isShutdown:Z

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->stop()V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACManager;->shutDownServices()V

    :goto_1f
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Shutdown Complete"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_36

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->startLock:Lcom/nuance/swypeconnect/ac/ACManager$SimpleLock;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager$SimpleLock;->unlock()V

    return-void

    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "ACManager not started, shutdown ignored"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_36

    goto :goto_1f

    :catchall_36
    move-exception v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->startLock:Lcom/nuance/swypeconnect/ac/ACManager$SimpleLock;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACManager$SimpleLock;->unlock()V

    throw v0
.end method

.method public final start()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->startLock:Lcom/nuance/swypeconnect/ac/ACManager$SimpleLock;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager$SimpleLock;->lock()V

    :try_start_5
    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x76

    const-string/jumbo v2, "SDK Already Started"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_14

    :catchall_14
    move-exception v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->startLock:Lcom/nuance/swypeconnect/ac/ACManager$SimpleLock;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACManager$SimpleLock;->unlock()V

    throw v0

    :cond_1b
    :try_start_1b
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectClientClassExist()Z

    move-result v0

    if-nez v0, :cond_2c

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x65

    const-string/jumbo v2, "Connect Service is not available. Please verify your SDK setup."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2c
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->applicationId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACManager;->validApplicationId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Invalid application key."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x6b

    const-string/jumbo v2, "The application key is not valid."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_47
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->getBuildExpiration()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->getBuildTimestamp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Verifying build has not expired."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V
    :try_end_67
    .catchall {:try_start_1b .. :try_end_67} :catchall_14

    :try_start_67
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->getBuildTimestamp()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "."

    const-string/jumbo v2, "T"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v4, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    iget v0, v4, Landroid/text/format/Time;->monthDay:I

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->getBuildExpiration()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v4, Landroid/text/format/Time;->monthDay:I

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/text/format/Time;->normalize(Z)J

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "now="

    const-string/jumbo v3, " expires="

    const-string/jumbo v5, " expired="

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v0

    if-eqz v0, :cond_e5

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "The SDK trial has expired on "

    invoke-virtual {v4}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x75

    const-string/jumbo v2, "The SDK Trial has expired."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_d1
    .catch Ljava/lang/NumberFormatException; {:try_start_67 .. :try_end_d1} :catch_d1
    .catch Landroid/util/TimeFormatException; {:try_start_67 .. :try_end_d1} :catch_10c
    .catchall {:try_start_67 .. :try_end_d1} :catchall_14

    :catch_d1
    move-exception v0

    :try_start_d2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "The SDK trial has expired."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x75

    const-string/jumbo v2, "The SDK Trial has expired."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_e5
    .catchall {:try_start_d2 .. :try_end_e5} :catchall_14

    :cond_e5
    :try_start_e5
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "This SDK trial expires on "

    invoke-virtual {v4}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_f1
    .catch Ljava/lang/NumberFormatException; {:try_start_e5 .. :try_end_f1} :catch_d1
    .catch Landroid/util/TimeFormatException; {:try_start_e5 .. :try_end_f1} :catch_10c
    .catchall {:try_start_e5 .. :try_end_f1} :catchall_14

    :cond_f1
    :try_start_f1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionAlpha:Ljava/lang/String;

    if-nez v0, :cond_120

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionChinese:Ljava/lang/String;

    if-nez v0, :cond_120

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionJapanese:Ljava/lang/String;

    if-nez v0, :cond_120

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionKorean:Ljava/lang/String;

    if-nez v0, :cond_120

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x6a

    const-string/jumbo v2, "You must specify core versions to start SC-SDK."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_10c
    move-exception v0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "The SDK trial has expired."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x75

    const-string/jumbo v2, "The SDK Trial has expired."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_120
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->context:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERNET"

    invoke-static {v0, v1}, Lcom/nuance/connect/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_141

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->context:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/nuance/connect/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_141

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->context:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v0, v1}, Lcom/nuance/connect/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14c

    :cond_141
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x64

    const-string/jumbo v2, "No network permissions were enabled. Please verify the Android manifest file."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_14c
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getCurrentVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_199

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v1}, Lcom/nuance/connect/api/ConfigService;->getCurrentVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_199

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "This is an update version from "

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v2}, Lcom/nuance/connect/api/ConfigService;->getCurrentVersion()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " to "

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ConfigService;->setCurrentVersion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v2}, Lcom/nuance/connect/api/ConfigService;->getCurrentVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/api/ConnectServiceManager;->onUpgrade(Ljava/lang/String;Ljava/lang/String;)V

    :cond_199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isShutdown:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->selectedServices:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACManager;->configureACSDK([Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACManager;->setupInitialization()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->start()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->sendConnectionStatus()V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACManager;->startServices()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "ACManager Started"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_1bc
    .catchall {:try_start_f1 .. :try_end_1bc} :catchall_14

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->startLock:Lcom/nuance/swypeconnect/ac/ACManager$SimpleLock;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager$SimpleLock;->unlock()V

    return-void
.end method

.method final startServices()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACService;->start()V

    goto :goto_a

    :cond_20
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->dlmConnector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->start()V

    return-void
.end method

.method public final unregisterConnectionCallback(Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;)V
    .registers 4

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connectionCallbacks:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connectionCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ConnectionCallback;

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_14

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v1, v0}, Lcom/nuance/connect/api/ConnectServiceManager;->unregisterConnectionCallback(Lcom/nuance/connect/api/ConnectionCallback;)V

    :cond_13
    return-void

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method
