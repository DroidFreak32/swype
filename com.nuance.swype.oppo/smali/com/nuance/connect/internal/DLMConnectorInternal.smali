.class Lcom/nuance/connect/internal/DLMConnectorInternal;
.super Lcom/nuance/connect/internal/AbstactService;

# interfaces
.implements Lcom/nuance/connect/api/DLMConnector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/DLMConnectorInternal$6;,
        Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;,
        Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;,
        Lcom/nuance/connect/internal/DLMConnectorInternal$ScannerBucketWrapper;,
        Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;
    }
.end annotation


# static fields
.field private static final BATCH_SIZE:I = 0x3e8

.field private static final BUCKET_CATEGORY:Ljava/lang/String; = "categoryId"

.field private static final BUCKET_CONTEXT1:Ljava/lang/String; = "context1"

.field private static final BUCKET_CONTEXT2:Ljava/lang/String; = "context2"

.field private static final BUCKET_CONTEXT3:Ljava/lang/String; = "context3"

.field private static final BUCKET_DUPLICATES:Ljava/lang/String; = "removeDuplicates"

.field private static final BUCKET_SCAN_ACTION:Ljava/lang/String; = "scanAction"

.field private static final BUCKET_USER_ACTION:Ljava/lang/String; = "userAction"

.field private static final DLM_CATEGORY_USER:I = 0x0

.field public static final DLM_EVENT_QUEUE_PREF:Ljava/lang/String; = "DLM_EVENT_QUEUE_DATA"

.field public static final DLM_SIZE_LARGE:I = 0x300000

.field public static final DLM_SIZE_MIN:I = 0x19000

.field public static final DLM_SIZE_NORMAL:I = 0x200000

.field public static final DLM_SIZE_SMALL:I = 0x100000

.field public static final DLM_SIZE_TINY:I = 0x32000

.field private static final DLM_TYPE:Ljava/lang/String; = "DLM_TYPE"

.field private static final DLM_TYPE_DELETE_CORE:I = 0x2

.field private static final DLM_TYPE_RECORDSET:I = 0x1

.field private static final DLM_TYPE_SCANNER_SET:I = 0x3

.field private static final LOCATION_UPDATE_INTERVAL:J = 0x1L

.field private static final MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

.field private static final SUPPORTED_CORES:[Ljava/lang/Integer;

.field private static final WRITE_DELAY:I = 0x7d0


# instance fields
.field private accountEnabled:Z

.field private allDlmYielding:Z

.field private backupCore:I

.field private backupEvents:Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;

.field booleanListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

.field private final buckets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;",
            ">;"
        }
    .end annotation
.end field

.field private connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field private currentAppName:Ljava/lang/String;

.field private currentInputType:I

.field private currentLocale:Ljava/lang/String;

.field private currentLocation:Ljava/lang/String;

.field private dataAccepted:Z

.field dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

.field private final dlmCallback:Landroid/os/Handler$Callback;

.field private dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

.field private final dlmHandler:Landroid/os/Handler;

.field private final dlmInfoList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nuance/connect/api/DLMConnector$DLMInformation;",
            ">;"
        }
    .end annotation
.end field

.field private dlmYielding:Landroid/util/SparseBooleanArray;

.field private final eventCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private eventsBatchRunnable:Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;

.field private genericEventNotification:Lcom/nuance/connect/api/DLMConnector$EventNotificationCallback;

.field private handler:Lcom/nuance/connect/internal/ConnectHandler;

.field private locationListener:Lcom/nuance/connect/location/ConnectLocationListener;

.field private locationSettings:Lcom/nuance/connect/location/LocationSettings;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private oemLog:Lcom/nuance/connect/util/Logger$Log;

.field private performingBackup:Z

.field private syncEnabled:Z

.field private updateLocationLater:Z

.field private updateLocationMilliseconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lcom/nuance/connect/internal/DLMConnectorInternal;->SUPPORTED_CORES:[Ljava/lang/Integer;

    new-array v0, v3, [Lcom/nuance/connect/internal/common/InternalMessages;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_PROCESS_DLM_EVENTS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_PROCESS_DLM_DELETE_CATEGORY:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v1, v0, v2

    sput-object v0, Lcom/nuance/connect/internal/DLMConnectorInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/nuance/connect/internal/AbstactService;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    iput-boolean v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->updateLocationLater:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->updateLocationMilliseconds:J

    iput v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->backupCore:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->buckets:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmInfoList:Landroid/util/SparseArray;

    iput-boolean v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->allDlmYielding:Z

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmYielding:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->locationSettings:Lcom/nuance/connect/location/LocationSettings;

    new-instance v0, Lcom/nuance/connect/internal/DLMConnectorInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/DLMConnectorInternal$1;-><init>(Lcom/nuance/connect/internal/DLMConnectorInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->locationListener:Lcom/nuance/connect/location/ConnectLocationListener;

    new-instance v0, Lcom/nuance/connect/internal/DLMConnectorInternal$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/DLMConnectorInternal$2;-><init>(Lcom/nuance/connect/internal/DLMConnectorInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->booleanListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    new-instance v0, Lcom/nuance/connect/internal/DLMConnectorInternal$3;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/DLMConnectorInternal$3;-><init>(Lcom/nuance/connect/internal/DLMConnectorInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmCallback:Landroid/os/Handler$Callback;

    new-instance v0, Lcom/nuance/connect/internal/DLMConnectorInternal$5;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/DLMConnectorInternal$5;-><init>(Lcom/nuance/connect/internal/DLMConnectorInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    new-instance v0, Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getDataManager()Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    move-result-object v1

    const-string v2, "DLM_EVENT_QUEUE_DATA"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;-><init>(Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    const-string v1, "USER_DLM_SYNC_ENABLED"

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->booleanListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/UserSettings;->registerUserSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isDlmSyncEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->syncEnabled:Z

    const-string v1, "USER_DLM_SYNC_ACCOUNT_ENABLED"

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->booleanListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/UserSettings;->registerUserSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isDlmSyncAccountEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->accountEnabled:Z

    const-string v1, "USER_ALLOW_USAGE_COLLECTION"

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->booleanListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/UserSettings;->registerUserSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isDataCollectionAccepted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dataAccepted:Z

    invoke-virtual {p0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->updateLocation()V

    invoke-direct {p0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->openDlmDB()V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/internal/DLMConnectorInternal;Lcom/nuance/connect/location/ConnectLocation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processLocationUpate(Lcom/nuance/connect/location/ConnectLocation;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/nuance/connect/internal/DLMConnectorInternal;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processDlmScannerSet(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/nuance/connect/internal/DLMConnectorInternal;)I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->backupCore:I

    return v0
.end method

.method static synthetic access$1102(Lcom/nuance/connect/internal/DLMConnectorInternal;I)I
    .locals 0

    iput p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->backupCore:I

    return p1
.end method

.method static synthetic access$1202(Lcom/nuance/connect/internal/DLMConnectorInternal;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->performingBackup:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/nuance/connect/internal/DLMConnectorInternal;Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;)Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->backupEvents:Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;

    return-object p1
.end method

.method static synthetic access$1400()[Lcom/nuance/connect/internal/common/InternalMessages;
    .locals 1

    sget-object v0, Lcom/nuance/connect/internal/DLMConnectorInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/nuance/connect/internal/DLMConnectorInternal;Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processBatch(Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/nuance/connect/internal/DLMConnectorInternal;Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->finishBatch(Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/connect/internal/DLMConnectorInternal;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->getLocationFrequencyUpdate()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/connect/internal/DLMConnectorInternal;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->syncEnabled:Z

    return v0
.end method

.method static synthetic access$402(Lcom/nuance/connect/internal/DLMConnectorInternal;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->syncEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/nuance/connect/internal/DLMConnectorInternal;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->accountEnabled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/nuance/connect/internal/DLMConnectorInternal;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->accountEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/nuance/connect/internal/DLMConnectorInternal;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dataAccepted:Z

    return v0
.end method

.method static synthetic access$602(Lcom/nuance/connect/internal/DLMConnectorInternal;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dataAccepted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/connect/internal/DLMConnectorInternal;)Z
    .locals 1

    invoke-direct {p0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmSyncAllowed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/nuance/connect/internal/DLMConnectorInternal;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processDlmDelete(ILjava/lang/String;)V

    return-void
.end method

.method private canProcess(I)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "canProcess("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ") allDlmYielding: "

    iget-boolean v4, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->allDlmYielding:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, " dlmYielding.get(coreId, false) "

    iget-object v6, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmYielding:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1, v10}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, " canProcess: "

    iget-boolean v8, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->allDlmYielding:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmYielding:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, p1, v10}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v8

    if-nez v8, :cond_0

    move v8, v9

    :goto_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->allDlmYielding:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmYielding:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v10}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return v9

    :cond_0
    move v8, v10

    goto :goto_0

    :cond_1
    move v9, v10

    goto :goto_1
.end method

.method private closeDlmDB()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    return-void
.end method

.method private createEvent(Landroid/os/Bundle;Z)V
    .locals 10

    invoke-direct {p0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmSyncAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Dlm disabled.  Ignoring event."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "DLM_EVENT_DATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "DLM_EVENT_APPNAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "DLM_EVENT_CORE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "DLM_EVENT_TIMESTAMP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "DLM_EVENT_LOCATION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "DLM_EVENT_LOCALE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "DLM_EVENT_INPUT_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    sget-object v0, Lcom/nuance/connect/internal/DLMConnectorInternal;->SUPPORTED_CORES:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "core not supported: "

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual/range {v1 .. v9}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->insertEvent(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->insertHighPriorityEvent(Ljava/lang/String;IJ)Z

    goto :goto_0
.end method

.method private deleteFile(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "dlm service unable to delete file."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private dlmSyncAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->syncEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->accountEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dataAccepted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableLocation(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->locationSettings:Lcom/nuance/connect/location/LocationSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/connect/location/LocationSettings;

    sget-object v1, Lcom/nuance/connect/location/LocationSettings$LocationMode;->PASSIVE:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    invoke-direct {v0, v1}, Lcom/nuance/connect/location/LocationSettings;-><init>(Lcom/nuance/connect/location/LocationSettings$LocationMode;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->locationSettings:Lcom/nuance/connect/location/LocationSettings;

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->locationSettings:Lcom/nuance/connect/location/LocationSettings;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/location/LocationSettings;->addType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->locationSettings:Lcom/nuance/connect/location/LocationSettings;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/location/LocationSettings;->addType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->locationSettings:Lcom/nuance/connect/location/LocationSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/connect/location/LocationSettings;->setActiveSearch(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->locationSettings:Lcom/nuance/connect/location/LocationSettings;

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->locationListener:Lcom/nuance/connect/location/ConnectLocationListener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->unregisterLocationListener(Lcom/nuance/connect/location/ConnectLocationListener;)V

    goto :goto_0
.end method

.method private finishBatch(Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "finishBatch()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventsBatchRunnable:Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventsBatchRunnable:Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;

    invoke-static {p1}, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->access$1800(Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {p1}, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->getStatus()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "DLM_EVENT_CORE"

    invoke-static {p1}, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->access$1700(Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "DLM_EVENT_COUNT"

    invoke-static {p1}, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->access$1900(Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "IDENTIFIER"

    invoke-static {p1}, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->access$1800(Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    invoke-static {p1}, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->access$2000(Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)I

    move-result v2

    invoke-static {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p1}, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->access$1700(Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processDLMCore(I)V

    return-void
.end method

.method private getBackupFile()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "backup_"

    const-string v1, ".dlm"

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v3}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppFilesFolder()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getBoolValueFromBucketData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"(\\w*\\=*)\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "getBoolValueFromBucketData IllegalStateException"

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getIntValueFromBucketData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"(\\d+)\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "getIntValueFromBucketData IllegalStateException"

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "getIntValueFromBucketData NumberFormatException"

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getLocationFrequencyUpdate()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->updateLocationLater:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->updateLocationMilliseconds:J

    return-void
.end method

.method private getStringValueFromBucketData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"(\\w*\\=*)\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/util/EncryptUtils;->decodeString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "getStringValueFromBucketData IllegalStateException"

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private onDlmEvent(ILjava/lang/String;J)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmSyncAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "DLM event is empty or null."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->updateLocationLater:Z

    if-ne v0, v2, :cond_3

    iget-wide v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->updateLocationMilliseconds:J

    cmp-long v0, v0, p3

    if-gtz v0, :cond_3

    invoke-direct {p0, v2}, Lcom/nuance/connect/internal/DLMConnectorInternal;->enableLocation(Z)V

    iput-boolean v3, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->updateLocationLater:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->updateLocationMilliseconds:J

    :cond_3
    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->performingBackup:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->backupEvents:Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;

    invoke-virtual {v0, p2}, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->addEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DLM_EVENT_DATA"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DLM_EVENT_TIMESTAMP"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "DLM_EVENT_CORE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "DLM_EVENT_APPNAME"

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->currentAppName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DLM_EVENT_LOCALE"

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->currentLocale:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DLM_EVENT_LOCATION"

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->currentLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DLM_EVENT_INPUT_TYPE"

    iget v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->currentInputType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0, v3}, Lcom/nuance/connect/internal/DLMConnectorInternal;->createEvent(Landroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method private onHighPriorityDlmEvent(ILjava/lang/String;J)V
    .locals 3

    invoke-direct {p0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmSyncAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->performingBackup:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->backupEvents:Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;

    invoke-virtual {v0, p2}, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->addEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DLM_EVENT_DATA"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DLM_EVENT_APPNAME"

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->currentAppName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DLM_EVENT_TIMESTAMP"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "DLM_EVENT_CORE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->createEvent(Landroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method private openDlmDB()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->openSafe()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->verifyDatabase()V

    :cond_0
    return-void
.end method

.method private processBatch(Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "processBatch()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventsBatchRunnable:Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventsBatchRunnable:Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;

    if-ne v0, p1, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventsBatchRunnable:Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;

    invoke-static {p1}, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->access$1700(Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->canProcess(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private processDlmDelete(ILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p2}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "DLM_DELETE_CAETEGORY"

    invoke-virtual {v0, p2, v1}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "DLM_DELETE_LANGUAGE"

    invoke-virtual {v0, p2, v2}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "IDENTIFIER"

    invoke-virtual {v0, p2, v3}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "DLM_EVENT_ACK"

    invoke-virtual {v0, p2, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p2}, Lcom/nuance/connect/util/InstallMetadata;->deletePackage(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    const/high16 v0, -0x80000000

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;->processDlmDelete(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;->processDlmDelete(II)Z

    move-result v0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "DEFAULT_KEY"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "IDENTIFIER"

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DLM_DELETE_CAETEGORY"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "DLM_EVENT_CORE"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "DLM_DELETE_LANGUAGE"

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    invoke-static {v4}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private processDlmEvents(ILjava/lang/String;Lcom/nuance/connect/api/DLMConnector$EventNotificationCallback;)V
    .locals 8

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "DLMConnectorInternal.processDlmEvents("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ", "

    const-string v5, ")"

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventsBatchRunnable:Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Another batch of events is currently being processed.  Ignoring until it is complete."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p2}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "DLM_EVENT_CORE"

    invoke-virtual {v0, p2, v1}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "IDENTIFIER"

    invoke-virtual {v1, p2, v2}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "DLM_EVENT_ACK"

    invoke-virtual {v1, p2, v3}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "DLMConnectorInternal.processDlmEvents processing events for core="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, " of file="

    const-string v5, " but categories don\'t match"

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/nuance/connect/util/FileUtils;->convertFileToList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "processing events for file="

    const-string v2, " but no events so cleaning it out"

    invoke-interface {v0, v1, p2, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p2}, Lcom/nuance/connect/util/InstallMetadata;->deletePackage(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    invoke-direct {p0, p2}, Lcom/nuance/connect/internal/DLMConnectorInternal;->deleteFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;

    if-eqz p3, :cond_5

    move-object v5, p3

    :goto_1
    move v3, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;-><init>(Ljava/util/List;Ljava/lang/String;IILcom/nuance/connect/api/DLMConnector$EventNotificationCallback;Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;Lcom/nuance/connect/internal/DLMConnectorInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processBatch(Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p2}, Lcom/nuance/connect/util/InstallMetadata;->deletePackage(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    invoke-direct {p0, p2}, Lcom/nuance/connect/internal/DLMConnectorInternal;->deleteFile(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->genericEventNotification:Lcom/nuance/connect/api/DLMConnector$EventNotificationCallback;

    goto :goto_1
.end method

.method private processDlmScannerSet(ILjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "DLMConnectorInternal.processDlmScannerSet("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ", "

    const-string v5, ") callbacks="

    iget-object v4, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v4, p2

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1, p2}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "DLM_EVENT_CORE"

    invoke-virtual {v1, p2, v2}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v1, p1, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "DLMConnectorInternal.processDlmScannerSet processing events for core="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, " of file="

    const-string v5, " but categories don\'t match"

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "DLM_EVENT_DATA"

    invoke-virtual {v1, p2, v2}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "removeDuplicates"

    invoke-direct {p0, v6, v1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->getBoolValueFromBucketData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-static {p2, v1}, Lcom/nuance/connect/util/FileUtils;->convertFileToList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2

    :try_start_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "processing events for file="

    const-string v2, " but no events so cleaning it out"

    invoke-interface {v0, v1, p2, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p2}, Lcom/nuance/connect/util/InstallMetadata;->deletePackage(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    invoke-direct {p0, p2}, Lcom/nuance/connect/internal/DLMConnectorInternal;->deleteFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v1, "context1"

    invoke-direct {p0, v6, v1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->getStringValueFromBucketData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context2"

    invoke-direct {p0, v6, v2}, Lcom/nuance/connect/internal/DLMConnectorInternal;->getStringValueFromBucketData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context3"

    invoke-direct {p0, v6, v3}, Lcom/nuance/connect/internal/DLMConnectorInternal;->getStringValueFromBucketData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "userAction"

    invoke-direct {p0, v6, v4}, Lcom/nuance/connect/internal/DLMConnectorInternal;->getIntValueFromBucketData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v5, "scanAction"

    invoke-direct {p0, v6, v5}, Lcom/nuance/connect/internal/DLMConnectorInternal;->getIntValueFromBucketData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string v8, "categoryId"

    invoke-direct {p0, v6, v8}, Lcom/nuance/connect/internal/DLMConnectorInternal;->getIntValueFromBucketData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;->scanBegin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "DLM_SCAN_WORD_QUALITY"

    invoke-virtual {v1, p2, v3}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "DLM_SCAN_SENTENCE_BASED"

    invoke-virtual {v1, p2, v3}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v6, :cond_4

    array-length v1, v2

    invoke-interface {v0, v2, v1, v4, v5}, Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;->scan([CIIZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1, p2}, Lcom/nuance/connect/util/InstallMetadata;->deletePackage(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    invoke-direct {p0, p2}, Lcom/nuance/connect/internal/DLMConnectorInternal;->deleteFile(Ljava/lang/String;)V

    throw v0

    :cond_4
    :try_start_2
    array-length v3, v2

    move v1, v6

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;->scanCategory(I[CIIZ)Z

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;->scanEnd()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p2}, Lcom/nuance/connect/util/InstallMetadata;->deletePackage(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    invoke-direct {p0, p2}, Lcom/nuance/connect/internal/DLMConnectorInternal;->deleteFile(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private processLocationUpate(Lcom/nuance/connect/location/ConnectLocation;)V
    .locals 6

    const-string v0, ""

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/nuance/connect/location/ConnectLocation;->getLocation()Landroid/location/Location;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "LONG"

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "LAT"

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "ACC"

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v4, v1

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "CC"

    invoke-virtual {p1}, Lcom/nuance/connect/location/ConnectLocation;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "AA"

    invoke-virtual {p1}, Lcom/nuance/connect/location/ConnectLocation;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "LY"

    invoke-virtual {p1}, Lcom/nuance/connect/location/ConnectLocation;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "processLocationUpate() - "

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->currentLocation:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private serializeBucketContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "context1\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1}, Lcom/nuance/connect/util/EncryptUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz p2, :cond_1

    const-string v1, "context2\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p2}, Lcom/nuance/connect/util/EncryptUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    if-eqz p3, :cond_2

    const-string v1, "context3\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p3}, Lcom/nuance/connect/util/EncryptUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v1, "userAction\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "scanAction\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "categoryId\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "removeDuplicates\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateDlmManagement(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->isSupportedCore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmInfoList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/DLMConnector$DLMInformation;

    invoke-interface {v0}, Lcom/nuance/connect/api/DLMConnector$DLMInformation;->getSize()I

    move-result v0

    const/high16 v1, 0x100000

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->LIVING_LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LivingLanguageService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/LivingLanguageService;->setLivingLanguageAvailable(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->LIVING_LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LivingLanguageService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/LivingLanguageService;->setLivingLanguageAvailable(Z)V

    goto :goto_0
.end method


# virtual methods
.method backupDlm(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->onBeginBackup(I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;

    invoke-interface {v0}, Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;->backupDlm()Z

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->onEndBackup()V

    :cond_0
    return v0
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .locals 1

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->DLM:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getScannerBucket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;
    .locals 11

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v3 .. v10}, Lcom/nuance/connect/internal/DLMConnectorInternal;->serializeBucketContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->buckets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;

    move/from16 v0, p6

    move/from16 v1, p7

    move/from16 v2, p8

    invoke-virtual {v3, v5, v0, v1, v2}, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->isSame(Ljava/lang/String;IIZ)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->getChildBucket()Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;

    move-object v4, p0

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v3 .. v8}, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;-><init>(Lcom/nuance/connect/internal/DLMConnectorInternal;Ljava/lang/String;IIZ)V

    iget-object v4, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->buckets:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->getChildBucket()Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    move-result-object v3

    goto :goto_0
.end method

.method public getScannerBucket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[IIZIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;
    .locals 15

    new-instance v13, Lcom/nuance/connect/api/DLMConnector$ScannerBucketSet;

    invoke-direct {v13}, Lcom/nuance/connect/api/DLMConnector$ScannerBucketSet;-><init>()V

    move-object/from16 v0, p6

    array-length v14, v0

    const/4 v1, 0x0

    move v12, v1

    :goto_0
    if-ge v12, v14, :cond_0

    aget v7, p6, v12

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/nuance/connect/internal/DLMConnectorInternal;->getScannerBucket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/nuance/connect/api/DLMConnector$ScannerBucketSet;->addBucket(Lcom/nuance/connect/api/DLMConnector$ScannerBucket;)V

    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_0

    :cond_0
    return-object v13
.end method

.method getServiceName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->DLM:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSupportedCore(I)Z
    .locals 2

    sget-object v0, Lcom/nuance/connect/internal/DLMConnectorInternal;->SUPPORTED_CORES:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onBeginBackup(I)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-instance v2, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;

    invoke-direct {p0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->getBackupFile()Ljava/io/File;

    move-result-object v3

    new-instance v4, Lcom/nuance/connect/internal/DLMConnectorInternal$4;

    invoke-direct {v4, p0}, Lcom/nuance/connect/internal/DLMConnectorInternal$4;-><init>(Lcom/nuance/connect/internal/DLMConnectorInternal;)V

    invoke-direct {v2, v3, v4, p1}, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;-><init>(Ljava/io/File;Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue$StatusCallback;I)V

    iput-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->backupEvents:Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, p1

    :goto_0
    iput v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->backupCore:I

    iput-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->performingBackup:Z

    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Unable to backup, unable to create BackupEventsFileQueue."

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Unable to backup, unable to create BackupEventsFileQueue."

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method

.method public onDlmEvent(ILjava/lang/String;JZ)V
    .locals 9

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "onDlmEvent("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ", "

    const-string v5, ", "

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, ")"

    move-object v4, p2

    invoke-interface/range {v0 .. v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p5, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/connect/internal/DLMConnectorInternal;->onHighPriorityDlmEvent(ILjava/lang/String;J)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/connect/internal/DLMConnectorInternal;->onDlmEvent(ILjava/lang/String;J)V

    goto :goto_0
.end method

.method public onEndBackup()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "DLMHandler.onEndBackup() backupCore="

    iget v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->backupCore:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->backupEvents:Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->backupEvents:Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->backupComplete()V

    :cond_0
    return-void
.end method

.method public onReset(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_LIVING_LANGUAGE_REFRESH:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    return-void
.end method

.method processDLMCore(I)V
    .locals 8

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "processDLMCore("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ") allDlmYielding: "

    iget-boolean v4, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->allDlmYielding:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, " dlmYielding: "

    iget-object v6, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmYielding:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->canProcess(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventsBatchRunnable:Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "DLM_EVENT_CORE"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/util/InstallMetadata;->listFromPropEquals(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pendingInstalls size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2, v0}, Lcom/nuance/connect/util/InstallMetadata;->isInstalling(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "DLM_TYPE"

    invoke-virtual {v2, v0, v3}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput p1, v1, Landroid/os/Message;->arg1:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method processDlmEvents(ILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "DLMConnectorInternal.processDlmEvents("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ", "

    const-string v5, ")"

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processDlmEvents(ILjava/lang/String;Lcom/nuance/connect/api/DLMConnector$EventNotificationCallback;)V

    return-void
.end method

.method recordDLMDeleteCategory(I)Z
    .locals 5

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "DLMConnectorInternal.recordDLMDeleteCategory("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEL|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->addPackage(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DLM_TYPE"

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DLM_EVENT_CORE"

    invoke-virtual {v1, v2, v3, p1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    const/4 v0, 0x1

    return v0
.end method

.method recordDLMDeleteCategory(IIIILjava/lang/String;)Z
    .locals 13

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "DLMConnectorInternal.recordDLMDeleteCategory("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ", "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, ", "

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, ", "

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, ", "

    const-string v12, ")"

    move-object/from16 v11, p5

    invoke-interface/range {v1 .. v12}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEL|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->addPackage(Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DLM_TYPE"

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DLM_DELETE_CAETEGORY"

    move/from16 v0, p3

    invoke-virtual {v2, v3, v4, v0}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DLM_EVENT_CORE"

    invoke-virtual {v2, v3, v4, p1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DLM_DELETE_LANGUAGE"

    invoke-virtual {v2, v3, v4, p2}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IDENTIFIER"

    move-object/from16 v0, p5

    invoke-virtual {v2, v3, v4, v0}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DLM_EVENT_ACK"

    move/from16 v0, p4

    invoke-virtual {v2, v3, v4, v0}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    const/4 v1, 0x1

    return v1
.end method

.method recordDLMRecordset(ILjava/lang/String;ILjava/lang/String;)Z
    .locals 11

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "DLMConnectorInternal.recordDLMRecordset("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ", "

    const-string v5, ", "

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, ", "

    const-string v9, ")"

    move-object v4, p2

    move-object v8, p4

    invoke-interface/range {v0 .. v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p2}, Lcom/nuance/connect/util/InstallMetadata;->addPackage(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "DLM_TYPE"

    invoke-virtual {v0, p2, v1, v10}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "DLM_EVENT_CORE"

    invoke-virtual {v0, p2, v1, p1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "IDENTIFIER"

    invoke-virtual {v0, p2, v1, p4}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "DLM_EVENT_FILE"

    invoke-virtual {v0, p2, v1, p2}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "DLM_EVENT_ACK"

    invoke-virtual {v0, p2, v1, p3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    return v10
.end method

.method recordDLMScannerSet(Ljava/lang/String;ILjava/lang/String;IZ)Z
    .locals 14

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "DLMConnectorInternal.recordDLMScannerSet("

    const-string v5, ", "

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, ", "

    const-string v9, ", "

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, ", "

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const-string v13, ")"

    move-object v4, p1

    move-object/from16 v8, p3

    invoke-interface/range {v2 .. v13}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/nuance/connect/util/InstallMetadata;->addPackage(Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "DLM_TYPE"

    const/4 v4, 0x3

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3, v4}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "DLM_EVENT_DATA"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3, p1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "DLM_EVENT_CORE"

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v2, v0, v3, v1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "DLM_EVENT_FILE"

    move-object/from16 v0, p3

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v3, v1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "DLM_SCAN_WORD_QUALITY"

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v3, v1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "DLM_SCAN_SENTENCE_BASED"

    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-virtual {v2, v0, v3, v1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    const/4 v2, 0x1

    return v2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v2
.end method

.method public registerDlmCallback(ILcom/nuance/connect/api/DLMConnector$DlmEventCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processDLMCore(I)V

    return-void
.end method

.method restoreDlm(ILjava/lang/String;Lcom/nuance/connect/api/DLMConnector$EventNotificationCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p2}, Lcom/nuance/connect/util/InstallMetadata;->addPackage(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "DLM_EVENT_CORE"

    invoke-virtual {v0, p2, v1, p1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processDlmEvents(ILjava/lang/String;Lcom/nuance/connect/api/DLMConnector$EventNotificationCallback;)V

    return-void
.end method

.method public resume()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->allDlmYielding:Z

    :goto_0
    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processDLMCore(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resume(I)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmYielding:Landroid/util/SparseBooleanArray;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processDLMCore(I)V

    return-void
.end method

.method public setDLMInfo(Lcom/nuance/connect/api/DLMConnector$DLMInformation;)V
    .locals 8

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "setDLMInfo("

    invoke-interface {p1}, Lcom/nuance/connect/api/DLMConnector$DLMInformation;->getCoreId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ","

    invoke-interface {p1}, Lcom/nuance/connect/api/DLMConnector$DLMInformation;->getSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ","

    invoke-interface {p1}, Lcom/nuance/connect/api/DLMConnector$DLMInformation;->getReserved()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, ")"

    invoke-interface/range {v0 .. v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmInfoList:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/nuance/connect/api/DLMConnector$DLMInformation;->getCoreId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmInfoList:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/nuance/connect/api/DLMConnector$DLMInformation;->getCoreId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {p1}, Lcom/nuance/connect/api/DLMConnector$DLMInformation;->getCoreId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->updateDlmManagement(I)V

    return-void
.end method

.method public setEventNotificationCallback(Lcom/nuance/connect/api/DLMConnector$EventNotificationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->genericEventNotification:Lcom/nuance/connect/api/DLMConnector$EventNotificationCallback;

    return-void
.end method

.method public unregisterDlmCallback(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public update()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    sget-object v1, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_SYSTEM_DATA:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/host/service/HostSystemData;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/HostSystemData;->getCurrentApplicationName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->currentAppName:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    sget-object v1, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_SYSTEM_DATA:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/host/service/HostSystemData;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/HostSystemData;->getCurrentFieldInfo()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->currentInputType:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->currentLocale:Ljava/lang/String;

    return-void
.end method

.method public updateLocation()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->enableLocation(Z)V

    return-void
.end method

.method public yield()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "yield()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->allDlmYielding:Z

    return-void
.end method

.method public yield(I)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "yield("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmYielding:Landroid/util/SparseBooleanArray;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return-void
.end method
