.class public Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;
.super Lcom/nuance/connect/internal/AbstractService;

# interfaces
.implements Lcom/nuance/connect/api/ChinesePredictionService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$5;,
        Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;,
        Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;,
        Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;,
        Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionImpl;,
        Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$PredictionRequestImpl;,
        Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$LoggingUrl;,
        Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$PredictionUrl;
    }
.end annotation


# static fields
.field private static final CCPS_VERSION:I = 0x1

.field private static final COMMAND_FAMILY:Ljava/lang/String; = "CHINESEPREDICTION"

.field private static final COMPRESSION_THRESHOLD_VOID:I = -0x1

.field private static final DEFAULT_NUM_PREDICTIONS:I = 0xa

.field private static final DISCONNECT_PENDING_TIMER:I = 0x64

.field private static final LOGGING_URL_NAME:Ljava/lang/String; = "logging"

.field private static final MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

.field private static final PENDING_LOG_THRESHOLD:I = 0xa

.field private static final PREDICTION_URL_NAME:Ljava/lang/String; = "predict"


# instance fields
.field private final activePredictions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;",
            ">;"
        }
    .end annotation
.end field

.field private final ccpsVersion:Ljava/lang/String;

.field private connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field private connectivity:Lcom/nuance/connect/system/Connectivity;

.field private connectivityStringListener:Lcom/nuance/connect/internal/Property$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentSessionCharacterSetId:I

.field private currentSessionLanguage:I

.field private customerId:Ljava/lang/String;

.field private final dataStore:Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;

.field private deviceId:Ljava/lang/String;

.field private handler:Lcom/nuance/connect/internal/ConnectHandler;

.field private idleTimeout:I

.field private final lock:[I

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private loggingConnectionConfig:Lcom/nuance/connect/comm/PersistantConnectionConfig;

.field private messageBus:Lcom/nuance/connect/comm/MessageSendingBus;

.field private oemLog:Lcom/nuance/connect/util/Logger$Log;

.field private pendingLogsSize:I

.field private persistantConnectionConfig:Lcom/nuance/connect/comm/PersistantConnectionConfig;

.field private final predictionCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/util/ConcurrentCallbackSet",
            "<",
            "Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private predictionResults:I

.field private final queue:Lcom/nuance/connect/comm/CommandQueue;

.field private final sessionActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private shutdownHandler:Landroid/os/Handler;

.field private transmitOrShutdownRunnable:Ljava/lang/Runnable;

.field private useable:Z

.field private xt9Version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    sput-object v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .registers 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/nuance/connect/internal/AbstractService;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-direct {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->predictionCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->activePredictions:Ljava/util/Map;

    const/16 v0, 0xa

    iput v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->predictionResults:I

    new-array v0, v6, [I

    iput-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->lock:[I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->sessionActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v6, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->useable:Z

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->pendingLogsSize:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->shutdownHandler:Landroid/os/Handler;

    iput-object v5, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->deviceId:Ljava/lang/String;

    new-instance v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$1;-><init>(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->transmitOrShutdownRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$2;-><init>(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->connectivityStringListener:Lcom/nuance/connect/internal/Property$ValueListener;

    new-instance v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$3;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$3;-><init>(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    new-instance v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;-><init>(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->messageBus:Lcom/nuance/connect/comm/MessageSendingBus;

    iput-object p1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    new-instance v0, Lcom/nuance/connect/system/Connectivity;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/connect/system/Connectivity;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->connectivity:Lcom/nuance/connect/system/Connectivity;

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    sget-object v1, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/host/service/BuildSettings;

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v1

    const-string/jumbo v2, "BACKGROUND_DATA_STATE"

    iget-object v3, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->connectivityStringListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/internal/UserSettings;->registerUserSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    const-string/jumbo v2, "FOREGROUND_DATA_STATE"

    iget-object v3, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->connectivityStringListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/internal/UserSettings;->registerUserSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getOemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->customerId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->parseSDKVersion(Lcom/nuance/connect/host/service/BuildSettings;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->ccpsVersion:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->connectivity:Lcom/nuance/connect/system/Connectivity;

    invoke-virtual {v1, v6}, Lcom/nuance/connect/system/Connectivity;->setStableCellularTime(I)V

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->connectivity:Lcom/nuance/connect/system/Connectivity;

    invoke-virtual {v1, v6}, Lcom/nuance/connect/system/Connectivity;->setStableWifiTime(I)V

    new-instance v1, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->dataStore:Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->dataStore:Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;

    invoke-virtual {v1}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->getPendingLogSize()I

    move-result v1

    iput v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->pendingLogsSize:I

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getCoreVersions()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->xt9Version:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->determineUsable()V

    new-instance v2, Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallbackDefault;

    invoke-direct {v2}, Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallbackDefault;-><init>()V

    new-instance v0, Lcom/nuance/connect/comm/CommandQueue;

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->messageBus:Lcom/nuance/connect/comm/MessageSendingBus;

    iget-object v3, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->connectivity:Lcom/nuance/connect/system/Connectivity;

    iget-object v4, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v4}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/connect/internal/AppSettings;->getMinimumSSLProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/comm/CommandQueue;-><init>(Lcom/nuance/connect/comm/MessageSendingBus;Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;Lcom/nuance/connect/system/Connectivity;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->queue:Lcom/nuance/connect/comm/CommandQueue;

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->queue:Lcom/nuance/connect/comm/CommandQueue;

    invoke-virtual {v0}, Lcom/nuance/connect/comm/CommandQueue;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->transmitOrShutdown()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/util/Logger$Log;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;JJLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->sendPredictionResponse(Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;JJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->sendPredictionCancel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/system/Connectivity;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->connectivity:Lcom/nuance/connect/system/Connectivity;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->xt9Version:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->sessionActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->dataStore:Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;I)I
    .registers 2

    iput p1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->pendingLogsSize:I

    return p1
.end method

.method static synthetic access$2800(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()[Lcom/nuance/connect/internal/common/InternalMessages;
    .registers 1

    sget-object v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->sendPredictionFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private determineUsable()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->useable:Z

    return-void
.end method

.method private parseSDKVersion(Lcom/nuance/connect/host/service/BuildSettings;)Ljava/lang/String;
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/nuance/connect/host/service/BuildSettings;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    if-lez v0, :cond_3f

    const/4 v0, 0x0

    :try_start_11
    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_16} :catch_3a

    move-result v0

    :goto_17
    array-length v4, v3

    if-le v4, v2, :cond_21

    const/4 v2, 0x1

    :try_start_1b
    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_20} :catch_3d

    move-result v1

    :cond_21
    :goto_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_3a
    move-exception v0

    move v0, v1

    goto :goto_17

    :catch_3d
    move-exception v2

    goto :goto_21

    :cond_3f
    move v0, v2

    goto :goto_17
.end method

.method private removeActivePrediction(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->activePredictions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->pendingLogsSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->pendingLogsSize:I

    return-void
.end method

.method private sendLoggingToServer()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "sendLoggingToServer"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->loggingConnectionConfig:Lcom/nuance/connect/comm/PersistantConnectionConfig;

    invoke-direct {v0, p0, v1}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;-><init>(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;Lcom/nuance/connect/comm/PersistantConnectionConfig;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->queue:Lcom/nuance/connect/comm/CommandQueue;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/comm/CommandQueue;->sendTransaction(Lcom/nuance/connect/comm/Transaction;)V

    return-void
.end method

.method private sendPredictionCancel(Ljava/lang/String;)V
    .registers 12

    const-wide/16 v4, -0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "sendPredictionCancel("

    const-string/jumbo v3, ")"

    invoke-interface {v0, v2, p1, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->predictionCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    new-array v2, v1, [Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionCallback;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionCallback;

    array-length v2, v0

    :goto_1a
    if-ge v1, v2, :cond_24

    aget-object v3, v0, v1

    invoke-interface {v3, p1}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionCallback;->onPredictionCancel(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_24
    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->dataStore:Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;

    iget-object v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->ccpsVersion:Ljava/lang/String;

    const/4 v3, 0x2

    move-object v1, p1

    move-wide v6, v4

    move-object v9, v8

    invoke-virtual/range {v0 .. v9}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->insertPrediction(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;)Z

    iget v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->pendingLogsSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->pendingLogsSize:I

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->removeActivePrediction(Ljava/lang/String;)V

    return-void
.end method

.method private sendPredictionFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "sendPredictionFailure("

    const-string/jumbo v3, ", "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, ", "

    const-string/jumbo v7, ")"

    move-object v2, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->predictionCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionCallback;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_2e

    aget-object v3, v0, v1

    invoke-interface {v3, p1, p2, p3}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionCallback;->onPredictionFailure(Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_2e
    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->dataStore:Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;

    iget-object v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->ccpsVersion:Ljava/lang/String;

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    move-object v1, p1

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->insertPrediction(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;)Z

    iget v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->pendingLogsSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->pendingLogsSize:I

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->removeActivePrediction(Ljava/lang/String;)V

    return-void
.end method

.method private sendPredictionResponse(Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;JJLjava/lang/String;Ljava/lang/String;)V
    .registers 18

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "sendPredictionResponse("

    invoke-interface {p1}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;->getPredictionId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-interface/range {v0 .. v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->dataStore:Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;

    invoke-interface {p1}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;->getPredictionId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->ccpsVersion:Ljava/lang/String;

    const/4 v3, 0x0

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->insertPrediction(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;)Z

    invoke-interface {p1}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;->getPredictionId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->removeActivePrediction(Ljava/lang/String;)V

    iget v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->pendingLogsSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->pendingLogsSize:I

    :try_start_3c
    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->predictionCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionCallback;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_49
    if-ge v1, v2, :cond_63

    aget-object v3, v0, v1

    invoke-interface {v3, p1}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionCallback;->onPredictionResult(Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_50} :catch_53

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :catch_53
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "The client has thrown an exception to us: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_63
    return-void
.end method

.method private sendPredictionStatus(ILjava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->predictionCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    new-array v2, v1, [Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionCallback;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionCallback;

    array-length v2, v0

    :goto_c
    if-ge v1, v2, :cond_16

    aget-object v3, v0, v1

    invoke-interface {v3, p1, p2}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionCallback;->onPredictionStatus(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_16
    return-void
.end method

.method private setupConnectionQueue(Z)V
    .registers 4

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->queue:Lcom/nuance/connect/comm/CommandQueue;

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->persistantConnectionConfig:Lcom/nuance/connect/comm/PersistantConnectionConfig;

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/comm/CommandQueue;->createPersistantConnection(Lcom/nuance/connect/comm/PersistantConnectionConfig;Z)V

    :cond_9
    return-void
.end method

.method private shutdownHandler()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->shutdownHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->transmitOrShutdownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private transmitOrShutdown()V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "transmitOrShutdown processing now size="

    iget v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->pendingLogsSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->pendingLogsSize:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_18

    invoke-direct {p0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->sendLoggingToServer()V

    :goto_17
    return-void

    :cond_18
    invoke-direct {p0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->shutdownHandler()V

    goto :goto_17
.end method


# virtual methods
.method public cancelPrediction(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "cancelPrediction() predictionId="

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->queue:Lcom/nuance/connect/comm/CommandQueue;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->activePredictions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->activePredictions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->cancel()V

    :cond_1f
    return-void
.end method

.method public endSession()V
    .registers 7

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "endSession()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->lock:[I

    monitor-enter v1

    :try_start_b
    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->sessionActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_15

    monitor-exit v1

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->sessionActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-boolean v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->useable:Z

    if-nez v0, :cond_24

    monitor-exit v1

    goto :goto_14

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_21

    throw v0

    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->shutdownHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->transmitOrShutdownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->shutdownHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->transmitOrShutdownRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->currentSessionLanguage:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->currentSessionCharacterSetId:I

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_24 .. :try_end_3d} :catchall_21

    goto :goto_14
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .registers 2

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->CHINESE_PREDICTION:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getIdleTimeout()I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->idleTimeout:I

    return v0
.end method

.method public getPredictionResults()I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->predictionResults:I

    return v0
.end method

.method getServiceName()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->CHINESE_PREDICTION:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSessionActive()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->sessionActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public logResultSelection(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "logResultSelection() predictionId="

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public logResultSelection(Ljava/lang/String;Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "logResultSelection() predictionId="

    const-string/jumbo v2, " prediction="

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->useable:Z

    if-nez v0, :cond_1b

    new-instance v0, Lcom/nuance/connect/api/ConnectException;

    const/16 v1, 0x6d

    invoke-direct {v0, v1}, Lcom/nuance/connect/api/ConnectException;-><init>(I)V

    throw v0

    :cond_1b
    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->dataStore:Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;

    const/4 v2, 0x3

    invoke-interface {p2}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;->getPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;->getSpell()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;->getFullSpell()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;->getAttributes()[I

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->logPredictionResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Z

    return-void
.end method

.method public logResultSelection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "logResultSelection() predictionId="

    const-string/jumbo v3, " phrase="

    const-string/jumbo v5, " spelling="

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->useable:Z

    if-nez v0, :cond_1e

    new-instance v0, Lcom/nuance/connect/api/ConnectException;

    const/16 v1, 0x6d

    invoke-direct {v0, v1}, Lcom/nuance/connect/api/ConnectException;-><init>(I)V

    throw v0

    :cond_1e
    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->dataStore:Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;

    const/4 v2, 0x3

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v7

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->logPredictionResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Z

    return-void
.end method

.method public logResultSelection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "logResultSelection() predictionId="

    const-string/jumbo v3, " phrase="

    const-string/jumbo v5, " spelling="

    const-string/jumbo v7, " fullSpell="

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    move-object v8, p4

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->useable:Z

    if-nez v0, :cond_21

    new-instance v0, Lcom/nuance/connect/api/ConnectException;

    const/16 v1, 0x6d

    invoke-direct {v0, v1}, Lcom/nuance/connect/api/ConnectException;-><init>(I)V

    throw v0

    :cond_21
    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->dataStore:Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;

    const/4 v2, 0x3

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->logPredictionResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Z

    return-void
.end method

.method public registerCallback(Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->predictionCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->clear()V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->predictionCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestPrediction([B)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->requestPrediction([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestPrediction([BLjava/lang/String;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation

    const/16 v3, 0x6d

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "requestPrediction() sessionActive="

    iget-object v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->sessionActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->sessionActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Lcom/nuance/connect/api/ConnectException;

    invoke-direct {v0, v3}, Lcom/nuance/connect/api/ConnectException;-><init>(I)V

    throw v0

    :cond_22
    iget-boolean v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->useable:Z

    if-nez v0, :cond_2c

    new-instance v0, Lcom/nuance/connect/api/ConnectException;

    invoke-direct {v0, v3}, Lcom/nuance/connect/api/ConnectException;-><init>(I)V

    throw v0

    :cond_2c
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget v3, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->currentSessionLanguage:I

    iget v4, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->currentSessionCharacterSetId:I

    iget-object v5, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->deviceId:Ljava/lang/String;

    iget-object v7, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->persistantConnectionConfig:Lcom/nuance/connect/comm/PersistantConnectionConfig;

    invoke-virtual {p0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->getPredictionResults()I

    move-result v8

    move-object v1, p0

    move-object v6, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;-><init>(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;Ljava/lang/String;IILjava/lang/String;[BLcom/nuance/connect/comm/PersistantConnectionConfig;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->activePredictions:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->queue:Lcom/nuance/connect/comm/CommandQueue;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/comm/CommandQueue;->sendTransaction(Lcom/nuance/connect/comm/Transaction;)V

    return-object v2
.end method

.method public setIdleTimeout(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation

    const/16 v2, 0x70

    if-gez p1, :cond_d

    new-instance v0, Lcom/nuance/connect/api/ConnectException;

    const-string/jumbo v1, "Idle timeout cannot be less then 0"

    invoke-direct {v0, v2, v1}, Lcom/nuance/connect/api/ConnectException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_d
    const/16 v0, 0x3c

    if-le p1, v0, :cond_1a

    new-instance v0, Lcom/nuance/connect/api/ConnectException;

    const-string/jumbo v1, "Idle timeout cannot be greater then 60"

    invoke-direct {v0, v2, v1}, Lcom/nuance/connect/api/ConnectException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1a
    iput p1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->idleTimeout:I

    return-void
.end method

.method public setPredictionResults(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation

    const/16 v2, 0x70

    if-gtz p1, :cond_d

    new-instance v0, Lcom/nuance/connect/api/ConnectException;

    const-string/jumbo v1, "prediction results cannot be less then 1"

    invoke-direct {v0, v2, v1}, Lcom/nuance/connect/api/ConnectException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_d
    const/16 v0, 0xa

    if-le p1, v0, :cond_1a

    new-instance v0, Lcom/nuance/connect/api/ConnectException;

    const-string/jumbo v1, "prediction results cannot be greater then 10"

    invoke-direct {v0, v2, v1}, Lcom/nuance/connect/api/ConnectException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1a
    iput p1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->predictionResults:I

    return-void
.end method

.method public startSession(II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "startSession("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->lock:[I

    monitor-enter v1

    :try_start_19
    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->shutdownHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->transmitOrShutdownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->useable:Z

    if-nez v0, :cond_2f

    new-instance v0, Lcom/nuance/connect/api/ConnectException;

    const/16 v2, 0x6d

    invoke-direct {v0, v2}, Lcom/nuance/connect/api/ConnectException;-><init>(I)V

    throw v0

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_19 .. :try_end_2e} :catchall_2c

    throw v0

    :cond_2f
    :try_start_2f
    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->sessionActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_42

    new-instance v0, Lcom/nuance/connect/api/ConnectException;

    const/16 v2, 0x6d

    const-string/jumbo v3, "Session already started."

    invoke-direct {v0, v2, v3}, Lcom/nuance/connect/api/ConnectException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_42
    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->messageBus:Lcom/nuance/connect/comm/MessageSendingBus;

    invoke-interface {v0}, Lcom/nuance/connect/comm/MessageSendingBus;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->deviceId:Ljava/lang/String;

    :cond_4e
    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->deviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7e

    :cond_5a
    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Device is not registered, unable to process prediction request"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/connect/api/ConnectException;

    const/16 v2, 0x6d

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Device must be registered before attempting to use "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/nuance/connect/api/ConnectException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_7e
    new-instance v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$PredictionUrl;

    iget-object v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->customerId:Ljava/lang/String;

    invoke-direct {v0, p0, v2, p1, p2}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$PredictionUrl;-><init>(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;Ljava/lang/String;II)V

    iget-object v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Starting Session url="

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$PredictionUrl;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$PredictionUrl;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->idleTimeout:I

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Lcom/nuance/connect/comm/PersistantConnectionConfig;->create(Ljava/lang/String;II)Lcom/nuance/connect/comm/PersistantConnectionConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->persistantConnectionConfig:Lcom/nuance/connect/comm/PersistantConnectionConfig;

    new-instance v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$LoggingUrl;

    iget-object v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->customerId:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$LoggingUrl;-><init>(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$LoggingUrl;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->idleTimeout:I

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Lcom/nuance/connect/comm/PersistantConnectionConfig;->create(Ljava/lang/String;II)Lcom/nuance/connect/comm/PersistantConnectionConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->loggingConnectionConfig:Lcom/nuance/connect/comm/PersistantConnectionConfig;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->setupConnectionQueue(Z)V

    iput p1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->currentSessionLanguage:I

    iput p2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->currentSessionCharacterSetId:I

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->sessionActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v1
    :try_end_c1
    .catchall {:try_start_2f .. :try_end_c1} :catchall_2c

    return-void
.end method

.method public unregisterCallback(Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->predictionCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterCallbacks()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->predictionCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->clear()V

    return-void
.end method
