.class public final Lcom/nuance/swypeconnect/ac/ACManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;,
        Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;,
        Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;
    }
.end annotation


# static fields
.field public static final ACCOUNT_SERVICE:Ljava/lang/String; = "ACCOUNT"

.field public static final BUILD_STATUS_LICENSED:I = 0xf

.field public static final BUILD_STATUS_UNLICENSED:I = 0xe

.field public static final CHINESE_DICTIONARY_SERVICE:Ljava/lang/String; = "CHINESE_DICTIONARY_SERVICE"

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

.field public static final CONNECTION_TYPE_BACKGROUND:I = 0x2

.field public static final CONNECTION_TYPE_FOREGROUND:I = 0x1

.field public static final CONNECT_TYPE_ALL:I = 0x3

.field public static final CORE_ALPHA:I = 0x1

.field public static final CORE_CHINESE:I = 0x3

.field public static final CORE_JAPANESE:I = 0x4

.field public static final CORE_KOREAN:I = 0x2

.field private static final DEFAULT_SERVICES:[Ljava/lang/String;

.field public static final DEVICE_SERVICE:Ljava/lang/String; = "DEVICE"

.field public static final DLM_SYNC_SERVICE:Ljava/lang/String; = "DLM_SYNC_SERVICE"

.field public static final LANGUAGE_SERVICE:Ljava/lang/String; = "LANGUAGE"

.field public static final LIVING_LANGUAGE_SERVICE:Ljava/lang/String; = "LIVING_LANGUAGE"

.field public static final PACKAGE_UPDATER_SERVICE:Ljava/lang/String; = "PACKAGE_UPDATER_SERVICE"

.field public static final REPORTING_SERVICE:Ljava/lang/String; = "REPORTING_SERVICE"

.field public static final SCANNER_SERVICE:Ljava/lang/String; = "SCANNER_SERVICE"


# instance fields
.field private applicationId:Ljava/lang/String;

.field private buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

.field private buildInfo:Lcom/nuance/swypeconnect/ac/ACBuildInfo;

.field private buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

.field private configService:Lcom/nuance/connect/api/ConfigService;

.field private configuration:Lcom/nuance/swypeconnect/ac/ACConfiguration;

.field private connect:Lcom/nuance/connect/api/ConnectServiceManager;

.field private connectionCallbacks:Ljava/util/Map;
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

.field private isShutdown:Z

.field private isStarted:Z

.field private language:Lcom/nuance/swypeconnect/ac/ACLanguage;

.field private legaldocs:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private oemId:Ljava/lang/String;

.field private selectedServices:[Ljava/lang/String;

.field private services:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
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

.field private store:Lcom/nuance/connect/store/FileStore;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LANGUAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "LIVING_LANGUAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CHINESE_DICTIONARY_SERVICE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ACCOUNT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SCANNER_SERVICE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "DLM_SYNC_SERVICE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "REPORTING_SERVICE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "PACKAGE_UPDATER_SERVICE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACManager;->DEFAULT_SERVICES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACManager;->DEFAULT_SERVICES:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swypeconnect/ac/ACManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isShutdown:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connectionCallbacks:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->applicationId:Ljava/lang/String;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    invoke-direct {v0}, Lcom/nuance/swypeconnect/ac/ACBuildConfig;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;

    invoke-direct {v1}, Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;-><init>()V

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    invoke-direct {v0, p0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;Lcom/nuance/swypeconnect/ac/ACBuildConfig;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getOemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->oemId:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACManager;->selectedServices:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nuance/connect/store/FileStore;

    invoke-direct {v1, v0}, Lcom/nuance/connect/store/FileStore;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/FileStore;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACManager$1;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;)V

    invoke-static {p1, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->make(Landroid/content/Context;Lcom/nuance/connect/host/service/HostInterface;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->CUSTOMER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SC-SDK Version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v2}, Lcom/nuance/connect/host/service/BuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v2}, Lcom/nuance/connect/host/service/BuildSettings;->getBuildTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ConfigService;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDeviceService;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-direct {v0, p0, v1}, Lcom/nuance/swypeconnect/ac/ACDeviceService;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/connect/api/ConfigService;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACService;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v2, Lcom/nuance/connect/common/ConnectFeature;->DLM:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v0, v2}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/DLMConnector;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/FileStore;

    invoke-direct {v1, v0, v2, p0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;-><init>(Lcom/nuance/connect/api/DLMConnector;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)V

    iput-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->dlmConnector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACConfiguration;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/FileStore;

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
.end method

.method static synthetic access$000(Lcom/nuance/swypeconnect/ac/ACManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swypeconnect/ac/ACManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionAlpha:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swypeconnect/ac/ACManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionChinese:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swypeconnect/ac/ACManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionJapanese:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swypeconnect/ac/ACManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionKorean:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/connect/host/service/BuildSettings;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    return-object v0
.end method

.method private checkRequestedServices([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/String;

    :cond_0
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    invoke-direct {p0, v3}, Lcom/nuance/swypeconnect/ac/ACManager;->isRequestedServiceAllowed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private getConnectClass()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "com.nuance.connect.service.ConnectClient"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isConnectClientClassExist()Z
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnectClass()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRequestedServiceAllowed(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "PACKAGE_UPDATER_SERVICE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->packageUpdateEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "PACKAGE_UPDATER_SERVICE is not enabled in this build."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private validApplicationId(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v2}, Lcom/nuance/connect/host/service/BuildSettings;->getAppKeyStarts()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v2}, Lcom/nuance/connect/host/service/BuildSettings;->getAppKeyStarts()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final configureACSDK([Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACManager;->checkRequestedServices([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_8

    aget-object v0, v3, v2

    if-eqz v0, :cond_0

    const-string v1, "LANGUAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "Loading service: "

    invoke-interface {v1, v5, v0}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-object v1, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->languageDownloadServiceClass:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v5, Lcom/nuance/connect/common/ConnectFeature;->LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v0, v5}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LanguageService;

    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/FileStore;

    invoke-static {v1, v0, v5, p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceFactory;->getACLanguageDownloadService(Ljava/lang/String;Lcom/nuance/connect/api/LanguageService;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    move-result-object v1

    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    move-object v0, v1

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACService;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACService;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const-string v1, "CHINESE_DICTIONARY_SERVICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "Loading service: "

    invoke-interface {v1, v5, v0}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->ADDON_DICTIONARIES:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AddonDictionariesService;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v6, Lcom/nuance/connect/common/ConnectFeature;->RESOURCES:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v1, v6}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/api/ResourcesService;

    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/FileStore;

    invoke-direct {v5, v0, v1, v6, p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;-><init>(Lcom/nuance/connect/api/AddonDictionariesService;Lcom/nuance/connect/api/ResourcesService;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v1, "LIVING_LANGUAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "Loading service: "

    invoke-interface {v1, v5, v0}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v5, Lcom/nuance/connect/common/ConnectFeature;->LIVING_LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v0, v5}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LivingLanguageService;

    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/FileStore;

    invoke-direct {v1, v0, v5}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;-><init>(Lcom/nuance/connect/api/LivingLanguageService;Lcom/nuance/connect/store/PersistentDataStore;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string v1, "ACCOUNT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "Loading service: "

    invoke-interface {v1, v5, v0}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACAccountService;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v5, Lcom/nuance/connect/common/ConnectFeature;->ACCOUNT:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v0, v5}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AccountService;

    invoke-direct {v1, v0}, Lcom/nuance/swypeconnect/ac/ACAccountService;-><init>(Lcom/nuance/connect/api/AccountService;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACAccountService;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4
    const-string v1, "SCANNER_SERVICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "Loading service: "

    invoke-interface {v1, v5, v0}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACScannerService;

    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACManager;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v6, Lcom/nuance/connect/common/ConnectFeature;->DLM:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v0, v6}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/DLMConnector;

    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/FileStore;

    invoke-direct {v1, v5, v0, v6, p0}, Lcom/nuance/swypeconnect/ac/ACScannerService;-><init>(Landroid/content/Context;Lcom/nuance/connect/api/DLMConnector;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_5
    const-string v1, "DLM_SYNC_SERVICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "Loading service: "

    invoke-interface {v1, v5, v0}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->SYNC:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/SyncService;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v6, Lcom/nuance/connect/common/ConnectFeature;->ACCOUNT:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v1, v6}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/api/AccountService;

    invoke-direct {v5, v0, v1}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;-><init>(Lcom/nuance/connect/api/SyncService;Lcom/nuance/connect/api/AccountService;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_6
    const-string v1, "REPORTING_SERVICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "Loading service: "

    invoke-interface {v1, v5, v0}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACReportingService;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v5, Lcom/nuance/connect/common/ConnectFeature;->REPORTING:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v0, v5}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ReportingService;

    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-object v5, v5, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->reportingLogHelperClass:Ljava/lang/String;

    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACManager;->store:Lcom/nuance/connect/store/FileStore;

    invoke-direct {v1, p0, v0, v5, v6}, Lcom/nuance/swypeconnect/ac/ACReportingService;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/connect/api/ReportingService;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_7
    const-string v1, "PACKAGE_UPDATER_SERVICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "Loading service: "

    invoke-interface {v1, v5, v0}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v5, Lcom/nuance/connect/common/ConnectFeature;->UPDATE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v0, v5}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/PlatformUpdateService;

    invoke-direct {v1, v0}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;-><init>(Lcom/nuance/connect/api/PlatformUpdateService;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method protected final convertJSONTasksToServiceTasks(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDB_AVAILABLE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "CHINESE_DICTIONARY_SERVICE"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "LIVING_LANGUAGE"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "CDB_LIST_UPDATE_"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v3, "CHINESE_DICTIONARY_SERVICE"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "LIVING_LANGUAGE"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_2
    return-object v0

    :cond_3
    :try_start_1
    const-string v4, "LANGUAGE_LIST_UPDATED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "LANGUAGE"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_4
    const-string v0, ","

    invoke-static {v1, v0}, Lcom/nuance/connect/util/StringUtils;->implode(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public final getACBuildDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getBuildTimestamp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getACVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBuildInfo()Lcom/nuance/swypeconnect/ac/ACBuildInfo;
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isShutdown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildInfo:Lcom/nuance/swypeconnect/ac/ACBuildInfo;

    if-nez v0, :cond_1

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACBuildInfo;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACBuildInfo;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildInfo:Lcom/nuance/swypeconnect/ac/ACBuildInfo;

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildInfo:Lcom/nuance/swypeconnect/ac/ACBuildInfo;

    goto :goto_0
.end method

.method protected final getBuildSettings()Lcom/nuance/connect/host/service/BuildSettings;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    return-object v0
.end method

.method public final getConfiguration()Lcom/nuance/swypeconnect/ac/ACConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configuration:Lcom/nuance/swypeconnect/ac/ACConfiguration;

    return-object v0
.end method

.method protected final getConnect()Lcom/nuance/connect/api/ConnectServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    return-object v0
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getCoreVersion(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/16 v2, 0x7b

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const-string v1, "You must specify a proper core type"

    invoke-direct {v0, v2, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionAlpha:Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const-string v1, "The core version was not set for the specified core"

    invoke-direct {v0, v2, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionKorean:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionChinese:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionJapanese:Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final getDLMConnector()Lcom/nuance/swypeconnect/ac/ACDLMConnector;
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isShutdown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->dlmConnector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    goto :goto_0
.end method

.method public final getLanguageSettings()Lcom/nuance/swypeconnect/ac/ACLanguage;
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isShutdown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    if-nez v0, :cond_1

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguage;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACLanguage;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    goto :goto_0
.end method

.method public final getLegalDocuments()Lcom/nuance/swypeconnect/ac/ACLegalDocuments;
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isShutdown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->legaldocs:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    goto :goto_0
.end method

.method public final getOemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->oemId:Ljava/lang/String;

    return-object v0
.end method

.method final getReportingService()Lcom/nuance/swypeconnect/ac/ACReportingService;
    .locals 2

    :try_start_0
    const-string v0, "REPORTING_SERVICE"

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACReportingService;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Could not get the reporting service"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/4 v3, 0x4

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "getService called before calling start."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x69

    const-string v2, "Please call start()."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isShutdown:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "getService called after shutdown."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x77

    const-string v2, "SDK has been shutdown. Please create a new instance with a clean object."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x81

    const-string v2, "This build is no longer licensed for use."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Service not available. "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x65

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not available."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACService;

    invoke-virtual {v0, v3}, Lcom/nuance/swypeconnect/ac/ACService;->requiresDocument(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->legaldocs:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    invoke-interface {v1, v3}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->userHasAcceptedDocumentByType(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "A service has been requested that reqires DATA_OPT_IN, but DATA_OPT_IN not accepted."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v2, 0x7e

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Please Accept the Data Opt-in before requesting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACService;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_4
    invoke-virtual {v0, v2}, Lcom/nuance/swypeconnect/ac/ACService;->requiresDocument(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->legaldocs:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    invoke-interface {v1, v2}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->userHasAcceptedDocumentByType(I)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "A service has been requested that reqires TOS, but TOS not accepted."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v2, 0x68

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Please Accept the TOS before requesting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACService;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_5
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACService;

    return-object v0
.end method

.method public final isConnectInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isInitialized:Z

    return v0
.end method

.method public final isConnectStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    return v0
.end method

.method public final refresh()V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isShutdown:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->refresh()V

    :cond_0
    return-void
.end method

.method public final registerConnectionCallback(Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;)V
    .locals 2

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACManager$2;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swypeconnect/ac/ACManager$2;-><init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connectionCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v1, v0}, Lcom/nuance/connect/api/ConnectServiceManager;->registerConnectionCallback(Lcom/nuance/connect/api/ConnectionCallback;)V

    return-void
.end method

.method public final retryConnection()V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isShutdown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->retryConnection()V

    :cond_0
    return-void
.end method

.method final declared-synchronized serviceInitialized(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getInitializationTimestamp()Ljava/lang/Long;

    move-result-object v0

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v1}, Lcom/nuance/connect/host/service/BuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ConfigService;->setInitialVersion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v1}, Lcom/nuance/connect/host/service/BuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ConfigService;->setCurrentVersion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ConfigService;->setInitializationTimestamp(Ljava/lang/Long;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isInitialized:Z

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    const/16 v1, 0xd

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/api/ConnectServiceManager;->notifyConnectionStatus(ILjava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setCoreVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/high16 v5, 0x200000

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x7b

    if-eqz p1, :cond_0

    const-string v0, "\\d+\\.\\d+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Alpha does not match major.minor version pattern with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionAlpha:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->dlmConnector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v5, v4}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->setDLMSize(III)V

    :goto_0
    if-eqz p4, :cond_2

    const-string v0, "\\d+\\.\\d+"

    invoke-static {v0, p4}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Korean does not match major.minor version pattern with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionAlpha:Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    iput-object p4, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionKorean:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->dlmConnector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5, v4}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->setDLMSize(III)V

    :goto_1
    if-eqz p2, :cond_4

    const-string v0, "\\d+\\.\\d+"

    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Chinese does not match major.minor version pattern with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionKorean:Ljava/lang/String;

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionChinese:Ljava/lang/String;

    :goto_2
    if-eqz p3, :cond_6

    const-string v0, "\\d+\\.\\d+"

    invoke-static {v0, p3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Japanese does not match major.minor version pattern with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_5
    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionChinese:Ljava/lang/String;

    goto :goto_2

    :cond_6
    if-eqz p3, :cond_7

    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionJapanese:Ljava/lang/String;

    :goto_3
    return-void

    :cond_7
    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionJapanese:Ljava/lang/String;

    goto :goto_3
.end method

.method protected final declared-synchronized setupInitialization()V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACService;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACService;->requireInitialization()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACService;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->dlmConnector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->requireInitialization()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->servicesToInitialize:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->dlmConnector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void
.end method

.method final shutDownServices()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACService;->shutdown()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->dlmConnector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->shutdown()V

    return-void
.end method

.method public final shutdown()V
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Shutdown ACManager"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isShutdown:Z

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->stop()V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACManager;->shutDownServices()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "ACManager not started, shutdown ignored"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final start()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/4 v8, 0x0

    const/16 v7, 0x75

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x76

    const-string v2, "SDK Already Started"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectClientClassExist()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x65

    const-string v2, "Connect Service is not available. Please verify your SDK setup."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->applicationId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACManager;->validApplicationId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Invalid application key."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x6b

    const-string v2, "The application key is not valid."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getBuildExpiration()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getBuildTimestamp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Verifying build has not expired."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getBuildTimestamp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, "T"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v4, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    iget v0, v4, Landroid/text/format/Time;->monthDay:I

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v1}, Lcom/nuance/connect/host/service/BuildSettings;->getBuildExpiration()Ljava/lang/String;

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

    const-string v1, "now="

    const-string v3, " expires="

    const-string v5, " expired="

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "The SDK trial has expired on "

    invoke-virtual {v4}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x75

    const-string v2, "The SDK Trial has expired."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "The SDK trial has expired."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const-string v1, "The SDK Trial has expired."

    invoke-direct {v0, v7, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "The SDK trial has expired."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const-string v1, "The SDK Trial has expired."

    invoke-direct {v0, v7, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionAlpha:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionChinese:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionJapanese:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionKorean:Ljava/lang/String;

    if-nez v0, :cond_4

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x6a

    const-string v2, "You must specify core versions to start SC-SDK."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->context:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {v0, v1}, Lcom/nuance/connect/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/nuance/connect/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v0, v1}, Lcom/nuance/connect/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x64

    const-string v2, "No network permissions were enabled. Please verify the Android manifest file."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v1}, Lcom/nuance/connect/api/ConfigService;->getCurrentVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "This is an update version from "

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v2}, Lcom/nuance/connect/api/ConfigService;->getCurrentVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, " to "

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v4}, Lcom/nuance/connect/host/service/BuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->configService:Lcom/nuance/connect/api/ConfigService;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->buildSettings:Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v1}, Lcom/nuance/connect/host/service/BuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ConfigService;->setCurrentVersion(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->selectedServices:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACManager;->configureACSDK([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACManager;->setupInitialization()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->start()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->sendConnectionStatus()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isStarted:Z

    iput-boolean v8, p0, Lcom/nuance/swypeconnect/ac/ACManager;->isShutdown:Z

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACManager;->startServices()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "ACManager Started"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    return-void
.end method

.method final startServices()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->services:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACService;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->dlmConnector:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->start()V

    return-void
.end method

.method public final unregisterConnectionCallback(Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connectionCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connectionCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ConnectionCallback;

    invoke-interface {v1, v0}, Lcom/nuance/connect/api/ConnectServiceManager;->unregisterConnectionCallback(Lcom/nuance/connect/api/ConnectionCallback;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager;->connectionCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
