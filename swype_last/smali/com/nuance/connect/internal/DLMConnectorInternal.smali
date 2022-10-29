.class Lcom/nuance/connect/internal/DLMConnectorInternal;
.super Lcom/nuance/connect/internal/AbstractService;

# interfaces
.implements Lcom/nuance/connect/api/DLMConnector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/DLMConnectorInternal$8;,
        Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;,
        Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;,
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

.field private static final DLM_TYPE_SCANNER_SET_BATCH:I = 0x4

.field private static final MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

.field private static final SCAN_BATCH_SIZE:I = 0x32

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

.field private final dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

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

.field private volatile eventsBatchRunnable:Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;

.field private genericEventNotification:Lcom/nuance/connect/api/DLMConnector$EventNotificationCallback;

.field private handler:Lcom/nuance/connect/internal/ConnectHandler;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private oemLog:Lcom/nuance/connect/util/Logger$Log;

.field private performingBackup:Z

.field private volatile processingScanningSet:Z

.field stringListener:Lcom/nuance/connect/internal/Property$StringValueListener;

.field private syncEnabled:Z

.field private final timestampPackageComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

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
    .registers 7

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/nuance/connect/internal/AbstractService;-><init>()V

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

    iput v4, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->backupCore:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->buckets:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmInfoList:Landroid/util/SparseArray;

    iput-boolean v4, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->allDlmYielding:Z

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmYielding:Landroid/util/SparseBooleanArray;

    new-instance v0, Lcom/nuance/connect/internal/DLMConnectorInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/DLMConnectorInternal$1;-><init>(Lcom/nuance/connect/internal/DLMConnectorInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->timestampPackageComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/nuance/connect/internal/DLMConnectorInternal$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/DLMConnectorInternal$2;-><init>(Lcom/nuance/connect/internal/DLMConnectorInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->stringListener:Lcom/nuance/connect/internal/Property$StringValueListener;

    new-instance v0, Lcom/nuance/connect/internal/DLMConnectorInternal$3;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/DLMConnectorInternal$3;-><init>(Lcom/nuance/connect/internal/DLMConnectorInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->booleanListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    new-instance v0, Lcom/nuance/connect/internal/DLMConnectorInternal$4;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/DLMConnectorInternal$4;-><init>(Lcom/nuance/connect/internal/DLMConnectorInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmCallback:Landroid/os/Handler$Callback;

    new-instance v0, Lcom/nuance/connect/internal/DLMConnectorInternal$6;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/DLMConnectorInternal$6;-><init>(Lcom/nuance/connect/internal/DLMConnectorInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    new-instance v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    new-instance v0, Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getDataManager()Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    move-result-object v1

    const-string/jumbo v2, "DLM_EVENT_QUEUE_DATA"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;-><init>(Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_99
    :goto_99
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2, v0}, Lcom/nuance/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_99

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2, v0, v4}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    goto :goto_99

    :cond_b4
    invoke-virtual {p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    const-string/jumbo v1, "USER_DLM_SYNC_ENABLED"

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->booleanListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/UserSettings;->registerUserSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isDlmSyncEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->syncEnabled:Z

    const-string/jumbo v1, "USER_DLM_SYNC_ACCOUNT_ENABLED"

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->booleanListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/UserSettings;->registerUserSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isDlmSyncAccountEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->accountEnabled:Z

    const-string/jumbo v1, "USER_ALLOW_USAGE_COLLECTION"

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->booleanListener:Lcom/nuance/connect/internal/Property$BooleanValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/UserSettings;->registerUserSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isDataCollectionAccepted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dataAccepted:Z

    const-string/jumbo v1, "LOCATION_COUNTRY"

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->stringListener:Lcom/nuance/connect/internal/Property$StringValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/UserSettings;->registerUserSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->getLocationCountry()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processLocationUpate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/util/InstallMetadata;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/connect/internal/DLMConnectorInternal;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processDlmScannerSet(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/nuance/connect/internal/DLMConnectorInternal;Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processScanBatch(Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/nuance/connect/internal/DLMConnectorInternal;)I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->backupCore:I

    return v0
.end method

.method static synthetic access$1202(Lcom/nuance/connect/internal/DLMConnectorInternal;I)I
    .registers 2

    iput p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->backupCore:I

    return p1
.end method

.method static synthetic access$1302(Lcom/nuance/connect/internal/DLMConnectorInternal;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->performingBackup:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/nuance/connect/internal/DLMConnectorInternal;Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;)Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->backupEvents:Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;

    return-object p1
.end method

.method static synthetic access$1500()[Lcom/nuance/connect/internal/common/InternalMessages;
    .registers 1

    sget-object v0, Lcom/nuance/connect/internal/DLMConnectorInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/nuance/connect/internal/DLMConnectorInternal;Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processBatch(Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/nuance/connect/internal/DLMConnectorInternal;Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->finishBatch(Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/nuance/connect/internal/DLMConnectorInternal;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->deleteFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/util/Logger$Log;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/internal/DLMConnectorInternal;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processLocationUpate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/connect/internal/DLMConnectorInternal;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->syncEnabled:Z

    return v0
.end method

.method static synthetic access$402(Lcom/nuance/connect/internal/DLMConnectorInternal;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->syncEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/nuance/connect/internal/DLMConnectorInternal;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->accountEnabled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/nuance/connect/internal/DLMConnectorInternal;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->accountEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/nuance/connect/internal/DLMConnectorInternal;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dataAccepted:Z

    return v0
.end method

.method static synthetic access$602(Lcom/nuance/connect/internal/DLMConnectorInternal;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dataAccepted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/util/Logger$Log;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/connect/internal/DLMConnectorInternal;)Z
    .registers 2

    invoke-direct {p0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmSyncAllowed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/nuance/connect/internal/DLMConnectorInternal;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processDlmDelete(ILjava/lang/String;)V

    return-void
.end method

.method private canProcess(I)Z
    .registers 13

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "canProcess("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, ") allDlmYielding: "

    iget-boolean v4, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->allDlmYielding:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string/jumbo v5, " dlmYielding.get(coreId, false) "

    iget-object v6, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmYielding:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1, v10}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string/jumbo v7, " canProcess: "

    iget-boolean v8, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->allDlmYielding:Z

    if-nez v8, :cond_45

    iget-object v8, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmYielding:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, p1, v10}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v8

    if-nez v8, :cond_45

    move v8, v9

    :goto_31
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->allDlmYielding:Z

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmYielding:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v10}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-nez v0, :cond_47

    :goto_44
    return v9

    :cond_45
    move v8, v10

    goto :goto_31

    :cond_47
    move v9, v10

    goto :goto_44
.end method

.method private createEvent(Landroid/os/Bundle;Z)V
    .registers 13

    invoke-direct {p0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmSyncAllowed()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    const-string/jumbo v0, "DLM_EVENT_DATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "DLM_EVENT_APPNAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "DLM_EVENT_CORE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v0, "DLM_EVENT_TIMESTAMP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v0, "DLM_EVENT_LOCATION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "DLM_EVENT_LOCALE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "DLM_EVENT_INPUT_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    sget-object v0, Lcom/nuance/connect/internal/DLMConnectorInternal;->SUPPORTED_CORES:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "core not supported: "

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_55
    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual/range {v1 .. v9}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->insertEvent(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->insertHighPriorityEvent(Ljava/lang/String;IJ)Z

    goto :goto_6
.end method

.method private deleteFile(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "dlm service unable to delete file."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_13
    return-void
.end method

.method private dlmSyncAllowed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->syncEnabled:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->accountEnabled:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dataAccepted:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private finishBatch(Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "finishBatch()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventsBatchRunnable:Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;

    if-ne p1, v0, :cond_57

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventsBatchRunnable:Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;

    # getter for: Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->identifier:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->access$2000(Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_57

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "DEFAULT_KEY"

    invoke-virtual {p1}, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->getStatus()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "DLM_EVENT_CORE"

    # getter for: Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->coreId:I
    invoke-static {p1}, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->access$1900(Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "DLM_EVENT_COUNT"

    # getter for: Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->eventIterator:Lcom/nuance/connect/util/FileUtils$CountingIterator;
    invoke-static {p1}, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->access$2100(Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)Lcom/nuance/connect/util/FileUtils$CountingIterator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/util/FileUtils$CountingIterator;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "IDENTIFIER"

    # getter for: Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->identifier:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->access$2000(Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    # getter for: Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->ackMessage:I
    invoke-static {p1}, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->access$2200(Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)I

    move-result v2

    invoke-static {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    :cond_57
    const/4 v0, 0x0

    :goto_58
    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_6c

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processDLMCore(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    :cond_6c
    return-void
.end method

.method private getBackupFile()Ljava/io/File;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "backup_"

    const-string/jumbo v1, ".dlm"

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v3}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppFilesFolder()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    return-object v0
.end method

.method private getBoolValueFromBucketData(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_36

    if-eqz p2, :cond_36

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_36

    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"(\\w*\\=*)\""

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

    if-eqz v2, :cond_36

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_35
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_35} :catch_37

    move-result v0

    :cond_36
    :goto_36
    return v0

    :catch_37
    move-exception v1

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "getBoolValueFromBucketData IllegalStateException"

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_36
.end method

.method private getIntValueFromBucketData(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_3a

    if-eqz p2, :cond_3a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3a

    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"(\\d+)\""

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

    if-eqz v2, :cond_3a

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_39
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_39} :catch_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_39} :catch_45

    move-result v0

    :cond_3a
    :goto_3a
    return v0

    :catch_3b
    move-exception v1

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "getIntValueFromBucketData IllegalStateException"

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3a

    :catch_45
    move-exception v1

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "getIntValueFromBucketData NumberFormatException"

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3a
.end method

.method private getStringValueFromBucketData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_41

    if-eqz p2, :cond_41

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_41

    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"(\\w*\\=*)\""

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

    if-eqz v1, :cond_36

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/util/EncryptUtils;->decodeString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_34} :catch_38

    move-result-object v0

    :goto_35
    return-object v0

    :cond_36
    const/4 v0, 0x0

    goto :goto_35

    :catch_38
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "getStringValueFromBucketData IllegalStateException"

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_41
    const-string/jumbo v0, ""

    goto :goto_35
.end method

.method private onDlmEvent(ILjava/lang/String;J)V
    .registers 8

    invoke-direct {p0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmSyncAllowed()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    if-eqz p2, :cond_f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    :cond_f
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "DLM event is empty or null."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_6

    :cond_18
    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->performingBackup:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->backupEvents:Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;

    invoke-virtual {v0, p2}, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->addEvent(Ljava/lang/String;)V

    goto :goto_6

    :cond_22
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "DLM_EVENT_DATA"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "DLM_EVENT_TIMESTAMP"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "DLM_EVENT_CORE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "DLM_EVENT_APPNAME"

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->currentAppName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "DLM_EVENT_LOCALE"

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->currentLocale:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "DLM_EVENT_LOCATION"

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->currentLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "DLM_EVENT_INPUT_TYPE"

    iget v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->currentInputType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->createEvent(Landroid/os/Bundle;Z)V

    goto :goto_6
.end method

.method private onHighPriorityDlmEvent(ILjava/lang/String;J)V
    .registers 8

    invoke-direct {p0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmSyncAllowed()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->performingBackup:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->backupEvents:Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;

    invoke-virtual {v0, p2}, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->addEvent(Ljava/lang/String;)V

    goto :goto_6

    :cond_11
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "DLM_EVENT_DATA"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "DLM_EVENT_APPNAME"

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->currentAppName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "DLM_EVENT_TIMESTAMP"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "DLM_EVENT_CORE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->createEvent(Landroid/os/Bundle;Z)V

    goto :goto_6
.end method

.method private processBatch(Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)V
    .registers 6

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "processBatch()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventsBatchRunnable:Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventsBatchRunnable:Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;

    if-ne v0, p1, :cond_21

    :cond_10
    iput-object p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventsBatchRunnable:Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;

    # getter for: Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->coreId:I
    invoke-static {p1}, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->access$1900(Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->canProcess(I)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_21
.end method

.method private processDlmDelete(ILjava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p2}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v1, "DLM_DELETE_CAETEGORY"

    invoke-virtual {v0, p2, v1}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v2, "DLM_DELETE_LANGUAGE"

    invoke-virtual {v0, p2, v2}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v3, "IDENTIFIER"

    invoke-virtual {v0, p2, v3}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v4, "DLM_EVENT_ACK"

    invoke-virtual {v0, p2, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p2}, Lcom/nuance/connect/util/InstallMetadata;->deletePackage(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    const/high16 v0, -0x80000000

    if-ne v2, v0, :cond_54

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;->processDlmDelete(I)Z

    :cond_53
    :goto_53
    return-void

    :cond_54
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;->processDlmDelete(II)Z

    move-result v0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "DEFAULT_KEY"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "IDENTIFIER"

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "DLM_DELETE_CAETEGORY"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "DLM_EVENT_CORE"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "DLM_DELETE_LANGUAGE"

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    invoke-static {v4}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto :goto_53
.end method

.method private processDlmEvents(ILjava/lang/String;Lcom/nuance/connect/api/DLMConnector$EventNotificationCallback;)V
    .registers 13

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "DLMConnectorInternal.processDlmEvents("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, ", "

    const-string/jumbo v5, ")"

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventsBatchRunnable:Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Another batch of events is currently being processed.  Ignoring until it is complete."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;

    if-eqz v7, :cond_1f

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p2}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v1, "DLM_EVENT_CORE"

    invoke-virtual {v0, p2, v1}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v2, "IDENTIFIER"

    invoke-virtual {v1, p2, v2}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v2, "DLM_EVENT_ACK"

    invoke-virtual {v1, p2, v2}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eq v0, p1, :cond_63

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "DLMConnectorInternal.processDlmEvents processing events for core="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, " of file="

    const-string/jumbo v5, " but categories don\'t match"

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1f

    :cond_63
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/nuance/connect/util/FileUtils;->streamFile(Ljava/lang/String;Z)Lcom/nuance/connect/util/FileUtils$CountingIterator;

    move-result-object v2

    if-nez v2, :cond_89

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "processing events for file="

    const-string/jumbo v2, " but no events so cleaning it out"

    invoke-interface {v0, v1, p2, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p2}, Lcom/nuance/connect/util/InstallMetadata;->deletePackage(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    invoke-direct {p0, p2}, Lcom/nuance/connect/internal/DLMConnectorInternal;->deleteFile(Ljava/lang/String;)V

    goto :goto_1f

    :cond_89
    new-instance v0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;

    if-eqz p3, :cond_98

    move-object v6, p3

    :goto_8e
    move-object v1, p2

    move v4, p1

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;-><init>(Ljava/lang/String;Lcom/nuance/connect/util/FileUtils$CountingIterator;Ljava/lang/String;IILcom/nuance/connect/api/DLMConnector$EventNotificationCallback;Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;Lcom/nuance/connect/internal/DLMConnectorInternal;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processBatch(Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)V

    goto :goto_1f

    :cond_98
    iget-object v6, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->genericEventNotification:Lcom/nuance/connect/api/DLMConnector$EventNotificationCallback;

    goto :goto_8e
.end method

.method private processDlmScannerSet(ILjava/lang/String;)V
    .registers 12

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "DLMConnectorInternal.processDlmScannerSet("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, ", "

    const-string/jumbo v5, ") callbacks="

    iget-object v4, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v4, p2

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->processingScanningSet:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "DLMConnectorInternal.processDlmScannerSet.  Ignoring until it is complete."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1, p2}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v2, "DLM_EVENT_CORE"

    invoke-virtual {v1, p2, v2}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v1, p1, :cond_5c

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "DLMConnectorInternal.processDlmScannerSet processing events for core="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, " of file="

    const-string/jumbo v5, " but categories don\'t match"

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2a

    :cond_5c
    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1, p2, v8}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v2, "DLM_EVENT_DATA"

    invoke-virtual {v1, p2, v2}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/nuance/connect/util/FileUtils;->streamFile(Ljava/lang/String;Z)Lcom/nuance/connect/util/FileUtils$CountingIterator;

    move-result-object v2

    if-eqz v2, :cond_f7

    const-string/jumbo v1, "removeDuplicates"

    invoke-direct {p0, v6, v1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->getBoolValueFromBucketData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f7

    new-instance v1, Lcom/nuance/connect/internal/DLMConnectorInternal$7;

    invoke-direct {v1, p0, v2}, Lcom/nuance/connect/internal/DLMConnectorInternal$7;-><init>(Lcom/nuance/connect/internal/DLMConnectorInternal;Lcom/nuance/connect/util/FileUtils$CountingIterator;)V

    move-object v7, v1

    :goto_80
    if-nez v7, :cond_9b

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "processing events for file="

    const-string/jumbo v2, " but no events so cleaning it out"

    invoke-interface {v0, v1, p2, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p2}, Lcom/nuance/connect/util/InstallMetadata;->deletePackage(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    invoke-direct {p0, p2}, Lcom/nuance/connect/internal/DLMConnectorInternal;->deleteFile(Ljava/lang/String;)V

    goto :goto_2a

    :cond_9b
    iput-boolean v8, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->processingScanningSet:Z

    const-string/jumbo v1, "context1"

    invoke-direct {p0, v6, v1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->getStringValueFromBucketData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "context2"

    invoke-direct {p0, v6, v2}, Lcom/nuance/connect/internal/DLMConnectorInternal;->getStringValueFromBucketData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "context3"

    invoke-direct {p0, v6, v3}, Lcom/nuance/connect/internal/DLMConnectorInternal;->getStringValueFromBucketData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "userAction"

    invoke-direct {p0, v6, v4}, Lcom/nuance/connect/internal/DLMConnectorInternal;->getIntValueFromBucketData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "scanAction"

    invoke-direct {p0, v6, v5}, Lcom/nuance/connect/internal/DLMConnectorInternal;->getIntValueFromBucketData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;->scanBegin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string/jumbo v1, "categoryId"

    invoke-direct {p0, v6, v1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->getIntValueFromBucketData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v2, "DLM_SCAN_WORD_QUALITY"

    invoke-virtual {v1, p2, v2}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v2, "DLM_SCAN_SENTENCE_BASED"

    invoke-virtual {v1, p2, v2}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    new-instance v1, Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;

    const/4 v8, 0x0

    move-object v2, v7

    move-object v3, p2

    move-object v7, v0

    invoke-direct/range {v1 .. v8}, Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;-><init>(Lcom/nuance/connect/util/FileUtils$CountingIterator;Ljava/lang/String;IIZLcom/nuance/connect/api/DLMConnector$DlmEventCallback;Lcom/nuance/connect/internal/DLMConnectorInternal$1;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2a

    :cond_f7
    move-object v7, v2

    goto :goto_80
.end method

.method private processLocationUpate(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, ""

    if-eqz p1, :cond_14

    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "CC"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_13} :catch_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_1f

    move-result-object v0

    :cond_14
    :goto_14
    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "processLocationUpate() - "

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->currentLocation:Ljava/lang/String;

    return-void

    :catch_1f
    move-exception v1

    goto :goto_14

    :catch_21
    move-exception v1

    goto :goto_14
.end method

.method private processScanBatch(Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;)V
    .registers 10

    const/4 v6, 0x0

    if-nez p1, :cond_22

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "processScanBatch info is null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    iput-boolean v6, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->processingScanningSet:Z

    move v0, v6

    :goto_e
    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_a7

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processDLMCore(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_22
    move v0, v6

    :goto_23
    iget-object v1, p1, Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;->eventIterator:Lcom/nuance/connect/util/FileUtils$CountingIterator;

    invoke-virtual {v1}, Lcom/nuance/connect/util/FileUtils$CountingIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    add-int/lit8 v7, v0, 0x1

    const/16 v1, 0x32

    if-ge v0, v1, :cond_5b

    iget-object v0, p1, Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;->eventIterator:Lcom/nuance/connect/util/FileUtils$CountingIterator;

    invoke-virtual {v0}, Lcom/nuance/connect/util/FileUtils$CountingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iget v0, p1, Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;->categoryId:I

    if-nez v0, :cond_4d

    iget-object v0, p1, Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;->coreSpecificEventCallback:Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;

    array-length v1, v2

    iget v3, p1, Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;->wordQuality:I

    iget-boolean v4, p1, Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;->sentenceBased:Z

    invoke-interface {v0, v2, v1, v3, v4}, Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;->scan([CIIZ)Z

    move v0, v7

    goto :goto_23

    :cond_4d
    iget-object v0, p1, Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;->coreSpecificEventCallback:Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;

    iget v1, p1, Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;->categoryId:I

    array-length v3, v2

    iget v4, p1, Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;->wordQuality:I

    iget-boolean v5, p1, Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;->sentenceBased:Z

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;->scanCategory(I[CIIZ)Z

    move v0, v7

    goto :goto_23

    :cond_5b
    iget-object v0, p1, Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;->eventIterator:Lcom/nuance/connect/util/FileUtils$CountingIterator;

    invoke-virtual {v0}, Lcom/nuance/connect/util/FileUtils$CountingIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_97

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "scan complete"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;->coreSpecificEventCallback:Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;

    invoke-interface {v0}, Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;->scanEnd()V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    iget-object v1, p1, Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;->fileLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/InstallMetadata;->deletePackage(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    iget-object v0, p1, Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;->fileLocation:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->deleteFile(Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->processingScanningSet:Z

    :goto_83
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_a7

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processDLMCore(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_83

    :cond_97
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_a7
    return-void
.end method

.method private serializeBucketContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)Ljava/lang/String;
    .registers 11

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_20

    const-string/jumbo v1, "context1\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1}, Lcom/nuance/connect/util/EncryptUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_20
    if-eqz p2, :cond_3b

    const-string/jumbo v1, "context2\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p2}, Lcom/nuance/connect/util/EncryptUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3b
    if-eqz p3, :cond_56

    const-string/jumbo v1, "context3\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p3}, Lcom/nuance/connect/util/EncryptUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_56
    const-string/jumbo v1, "userAction\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "scanAction\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "categoryId\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "removeDuplicates\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateDlmManagement(I)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->isSupportedCore(I)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmInfoList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/DLMConnector$DLMInformation;

    invoke-interface {v0}, Lcom/nuance/connect/api/DLMConnector$DLMInformation;->getSize()I

    move-result v0

    const/high16 v1, 0x100000

    if-ge v0, v1, :cond_25

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->LIVING_LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LivingLanguageService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/LivingLanguageService;->setLivingLanguageAvailable(Z)V

    :cond_24
    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->LIVING_LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LivingLanguageService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/LivingLanguageService;->setLivingLanguageAvailable(Z)V

    goto :goto_24
.end method


# virtual methods
.method backupDlm(I)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->onBeginBackup(I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;

    invoke-interface {v0}, Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;->backupDlm()Z

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->onEndBackup()V

    :cond_1b
    return v0
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .registers 2

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->DLM:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getScannerBucket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;
    .registers 22

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

    :cond_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;

    move/from16 v0, p6

    move/from16 v1, p7

    move/from16 v2, p8

    invoke-virtual {v3, v5, v0, v1, v2}, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->isSame(Ljava/lang/String;IIZ)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v3}, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->getChildBucket()Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    move-result-object v3

    :goto_31
    return-object v3

    :cond_32
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

    goto :goto_31
.end method

.method public getScannerBucket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[IIZIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;
    .registers 26

    new-instance v13, Lcom/nuance/connect/api/DLMConnector$ScannerBucketSet;

    invoke-direct {v13}, Lcom/nuance/connect/api/DLMConnector$ScannerBucketSet;-><init>()V

    move-object/from16 v0, p6

    array-length v14, v0

    const/4 v1, 0x0

    move v12, v1

    :goto_a
    if-ge v12, v14, :cond_2c

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

    goto :goto_a

    :cond_2c
    return-object v13
.end method

.method getServiceName()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->DLM:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSupportedCore(I)Z
    .registers 4

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
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_2
    new-instance v2, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;

    invoke-direct {p0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->getBackupFile()Ljava/io/File;

    move-result-object v3

    new-instance v4, Lcom/nuance/connect/internal/DLMConnectorInternal$5;

    invoke-direct {v4, p0}, Lcom/nuance/connect/internal/DLMConnectorInternal$5;-><init>(Lcom/nuance/connect/internal/DLMConnectorInternal;)V

    invoke-direct {v2, v3, v4, p1}, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;-><init>(Ljava/io/File;Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue$StatusCallback;I)V

    iput-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->backupEvents:Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_12} :catch_18
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_23

    move v1, p1

    :goto_13
    iput v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->backupCore:I

    iput-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->performingBackup:Z

    return-void

    :catch_18
    move-exception v0

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Unable to backup, unable to create BackupEventsFileQueue."

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_13

    :catch_23
    move-exception v0

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Unable to backup, unable to create BackupEventsFileQueue."

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_13
.end method

.method public onDlmEvent(ILjava/lang/String;JZ)V
    .registers 9

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "onDlmEvent()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    if-eqz p5, :cond_e

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/connect/internal/DLMConnectorInternal;->onHighPriorityDlmEvent(ILjava/lang/String;J)V

    :goto_d
    return-void

    :cond_e
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/connect/internal/DLMConnectorInternal;->onDlmEvent(ILjava/lang/String;J)V

    goto :goto_d
.end method

.method public onEndBackup()V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "DLMHandler.onEndBackup() backupCore="

    iget v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->backupCore:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->backupEvents:Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->backupEvents:Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->backupComplete()V

    :cond_17
    return-void
.end method

.method public onReset(IZ)V
    .registers 6

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
    .registers 10

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "processDLMCore("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, ") allDlmYielding: "

    iget-boolean v4, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->allDlmYielding:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string/jumbo v5, " dlmYielding: "

    iget-object v6, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmYielding:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->canProcess(I)Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_29
    :goto_29
    return-void

    :cond_2a
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v1, "DLM_EVENT_CORE"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/util/InstallMetadata;->listFromPropEquals(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pendingInstalls size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->timestampPackageComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_55
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2, v0}, Lcom/nuance/connect/util/InstallMetadata;->isInstalling(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_55

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v3, "DLM_TYPE"

    invoke-virtual {v2, v0, v3}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput p1, v1, Landroid/os/Message;->arg1:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_29
.end method

.method processDlmEvents(ILjava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "DLMConnectorInternal.processDlmEvents("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, ", "

    const-string/jumbo v5, ")"

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processDlmEvents(ILjava/lang/String;Lcom/nuance/connect/api/DLMConnector$EventNotificationCallback;)V

    return-void
.end method

.method recordDLMDeleteCategory(I)Z
    .registers 8

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "DLMConnectorInternal.recordDLMDeleteCategory("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DEL|"

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

    const-string/jumbo v3, "DLM_TYPE"

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "DLM_EVENT_CORE"

    invoke-virtual {v1, v2, v3, p1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "DLM_EVENT_TIMESTAMP"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;J)V

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
    .registers 20

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "DLMConnectorInternal.recordDLMDeleteCategory("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string/jumbo v11, ", "

    const-string/jumbo v13, ")"

    move-object/from16 v12, p5

    invoke-interface/range {v2 .. v13}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DEL|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/connect/util/InstallMetadata;->addPackage(Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "DLM_TYPE"

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "DLM_DELETE_CAETEGORY"

    move/from16 v0, p3

    invoke-virtual {v3, v4, v5, v0}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "DLM_EVENT_CORE"

    invoke-virtual {v3, v4, v5, p1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "DLM_DELETE_LANGUAGE"

    move/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "IDENTIFIER"

    move-object/from16 v0, p5

    invoke-virtual {v3, v4, v5, v0}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "DLM_EVENT_ACK"

    move/from16 v0, p4

    invoke-virtual {v3, v4, v5, v0}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "DLM_EVENT_TIMESTAMP"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v3, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    const/4 v2, 0x1

    return v2
.end method

.method recordDLMRecordset(ILjava/lang/String;ILjava/lang/String;)Z
    .registers 16

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "DLMConnectorInternal.recordDLMRecordset("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, ", "

    const-string/jumbo v5, ", "

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, ", "

    const-string/jumbo v9, ")"

    move-object v4, p2

    move-object v8, p4

    invoke-interface/range {v0 .. v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p4, :cond_4b

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v1, "IDENTIFIER"

    invoke-virtual {v0, v1, p4}, Lcom/nuance/connect/util/InstallMetadata;->listFromPropEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "DLMConnectorInternal.recordDLMRecordset--replacing staged events for: "

    invoke-interface {v2, v3, p4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2, v0}, Lcom/nuance/connect/util/InstallMetadata;->deletePackage(Ljava/lang/String;)Z

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->deleteFile(Ljava/lang/String;)V

    goto :goto_2e

    :cond_4b
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p2}, Lcom/nuance/connect/util/InstallMetadata;->addPackage(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v1, "DLM_TYPE"

    invoke-virtual {v0, p2, v1, v10}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v1, "DLM_EVENT_CORE"

    invoke-virtual {v0, p2, v1, p1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v1, "IDENTIFIER"

    invoke-virtual {v0, p2, v1, p4}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v1, "DLM_EVENT_FILE"

    invoke-virtual {v0, p2, v1, p2}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v1, "DLM_EVENT_ACK"

    invoke-virtual {v0, p2, v1, p3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v1, "DLM_EVENT_TIMESTAMP"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    return v10
.end method

.method recordDLMScannerSet(Ljava/lang/String;ILjava/lang/String;IZ)Z
    .registers 20

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "DLMConnectorInternal.recordDLMScannerSet("

    const-string/jumbo v5, ", "

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, ", "

    const-string/jumbo v9, ", "

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string/jumbo v11, ", "

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const-string/jumbo v13, ")"

    move-object v4, p1

    move-object/from16 v8, p3

    invoke-interface/range {v2 .. v13}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_26
    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/nuance/connect/util/InstallMetadata;->addPackage(Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v3, "DLM_TYPE"

    const/4 v4, 0x3

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3, v4}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v3, "DLM_EVENT_DATA"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3, p1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v3, "DLM_EVENT_CORE"

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v2, v0, v3, v1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v3, "DLM_EVENT_FILE"

    move-object/from16 v0, p3

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v3, v1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v3, "DLM_SCAN_WORD_QUALITY"

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v3, v1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v3, "DLM_SCAN_SENTENCE_BASED"

    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-virtual {v2, v0, v3, v1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V
    :try_end_7f
    .catchall {:try_start_26 .. :try_end_7f} :catchall_86

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    const/4 v2, 0x1

    return v2

    :catchall_86
    move-exception v2

    iget-object v3, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v3}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v2
.end method

.method public registerDlmCallback(ILcom/nuance/connect/api/DLMConnector$DlmEventCallback;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processDLMCore(I)V

    return-void
.end method

.method restoreDlm(ILjava/lang/String;Lcom/nuance/connect/api/DLMConnector$EventNotificationCallback;)V
    .registers 8

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0, p2}, Lcom/nuance/connect/util/InstallMetadata;->addPackage(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v1, "DLM_EVENT_CORE"

    invoke-virtual {v0, p2, v1, p1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v1, "DLM_EVENT_TIMESTAMP"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v1, "DLM_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processDlmEvents(ILjava/lang/String;Lcom/nuance/connect/api/DLMConnector$EventNotificationCallback;)V

    return-void
.end method

.method public resume()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->allDlmYielding:Z

    :goto_3
    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processDLMCore(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_17
    return-void
.end method

.method public resume(I)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmYielding:Landroid/util/SparseBooleanArray;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processDLMCore(I)V

    return-void
.end method

.method public setDLMInfo(Lcom/nuance/connect/api/DLMConnector$DLMInformation;)V
    .registers 10

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "setDLMInfo("

    invoke-interface {p1}, Lcom/nuance/connect/api/DLMConnector$DLMInformation;->getCoreId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-interface {p1}, Lcom/nuance/connect/api/DLMConnector$DLMInformation;->getSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-interface {p1}, Lcom/nuance/connect/api/DLMConnector$DLMInformation;->getReserved()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, ")"

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
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->genericEventNotification:Lcom/nuance/connect/api/DLMConnector$EventNotificationCallback;

    return-void
.end method

.method public unregisterDlmCallback(I)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->eventCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public update()V
    .registers 3

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

.method public yield()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "yield()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->allDlmYielding:Z

    return-void
.end method

.method public yield(I)V
    .registers 6

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "yield("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmYielding:Landroid/util/SparseBooleanArray;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return-void
.end method
