.class public Lcom/nuance/swype/connect/Connect;
.super Ljava/lang/Object;
.source "Connect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/connect/Connect$SessionState;,
        Lcom/nuance/swype/connect/Connect$Sync;,
        Lcom/nuance/swype/connect/Connect$Accounts;,
        Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;,
        Lcom/nuance/swype/connect/Connect$LivingLanguage;,
        Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;
    }
.end annotation


# static fields
.field private static final ACCOUNT_PREF:Ljava/lang/String; = "account_ACTIVE_ACCOUNT"

.field private static final ACCOUNT_PREF_OLD:Ljava/lang/String; = "account_ACCOUNT"

.field private static final COMPRESSION_EXTENSION:Ljava/lang/String; = ".mp3"

.field private static final CORE_VERSION:Ljava/lang/String; = "9.12"

.field private static final MESSAGE_POST_START:I = 0x65

.field private static final MESSAGE_START:I = 0x64

.field private static final NOTIFY_STATS_SETTING_CHANGED:I = 0x66

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static final trace:Lcom/nuance/swype/util/LogManager$Trace;


# instance fields
.field private acDLMSyncCallback:Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

.field private volatile acManager:Lcom/nuance/swypeconnect/ac/ACManager;

.field private volatile accountService:Lcom/nuance/swypeconnect/ac/ACAccountService;

.field private volatile catalogService:Lcom/nuance/swypeconnect/ac/ACCatalogService;

.field protected volatile cellularConnected:Z

.field private final chineseListCallback:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;

.field private volatile chinesePredictionService:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

.field private volatile chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

.field private connectLegal:Lcom/nuance/swype/connect/ConnectLegal;

.field private connection:Lcom/nuance/swype/connect/ConnectedStatus;

.field private context:Landroid/content/Context;

.field private volatile created:Z

.field private final creatorLatch:Ljava/util/concurrent/CountDownLatch;

.field private final creatorThread:Ljava/lang/Thread;

.field private volatile defaultSyncCallback:Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;

.field private dictionaryDownloadManager:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

.field private downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

.field private final handlerCallback:Landroid/os/Handler$Callback;

.field private imeIdle:Z

.field private volatile initialLanguage:[I

.field private volatile initialLocale:Ljava/util/Locale;

.field private volatile isDataUsageOptInAccepted:Z

.field private isLicensed:Z

.field private volatile isStaticsCollectionEnabled:Z

.field private volatile isUsageCollectionEnabled:Z

.field private volatile language:Lcom/nuance/swypeconnect/ac/ACLanguage;

.field private licenseFileValid:Ljava/lang/Boolean;

.field final livingLanguageCallback:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;

.field private volatile livingLanguageService:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

.field private mCoreVersionPattern:Ljava/util/regex/Pattern;

.field protected maxConnectionsCellular:I

.field protected maxConnectionsWifi:I

.field private notificationManager:Landroid/app/NotificationManager;

.field private final postStartEvents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private queue:Landroid/os/Handler;

.field private volatile reportingService:Lcom/nuance/swypeconnect/ac/ACReportingService;

.field private volatile scannerService:Lcom/nuance/swypeconnect/ac/ACScannerService;

.field private volatile syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

.field private updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

.field protected volatile wifiConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-string/jumbo v0, "Connect"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 96
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getTrace()Lcom/nuance/swype/util/LogManager$Trace;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/connect/Connect;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const-string/jumbo v1, "(\\d+\\.)(\\d+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/connect/Connect;->mCoreVersionPattern:Ljava/util/regex/Pattern;

    .line 106
    iput v2, p0, Lcom/nuance/swype/connect/Connect;->maxConnectionsWifi:I

    .line 107
    iput v2, p0, Lcom/nuance/swype/connect/Connect;->maxConnectionsCellular:I

    .line 111
    iput-object v4, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    .line 114
    iput-object v4, p0, Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    .line 130
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/connect/Connect;->initialLocale:Ljava/util/Locale;

    .line 131
    iput-object v4, p0, Lcom/nuance/swype/connect/Connect;->initialLanguage:[I

    .line 139
    iput-boolean v3, p0, Lcom/nuance/swype/connect/Connect;->wifiConnected:Z

    .line 140
    iput-boolean v3, p0, Lcom/nuance/swype/connect/Connect;->cellularConnected:Z

    .line 141
    iput-boolean v2, p0, Lcom/nuance/swype/connect/Connect;->isLicensed:Z

    .line 149
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/connect/Connect;->postStartEvents:Ljava/util/Queue;

    .line 151
    new-instance v1, Lcom/nuance/swype/connect/Connect$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/connect/Connect$1;-><init>(Lcom/nuance/swype/connect/Connect;)V

    iput-object v1, p0, Lcom/nuance/swype/connect/Connect;->handlerCallback:Landroid/os/Handler$Callback;

    .line 178
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v1}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/connect/Connect;->queue:Landroid/os/Handler;

    .line 186
    new-instance v1, Lcom/nuance/swype/connect/Connect$2;

    invoke-direct {v1, p0}, Lcom/nuance/swype/connect/Connect$2;-><init>(Lcom/nuance/swype/connect/Connect;)V

    iput-object v1, p0, Lcom/nuance/swype/connect/Connect;->chineseListCallback:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;

    .line 647
    iput-boolean v3, p0, Lcom/nuance/swype/connect/Connect;->created:Z

    .line 648
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/nuance/swype/connect/Connect;->creatorLatch:Ljava/util/concurrent/CountDownLatch;

    .line 649
    new-instance v1, Lcom/nuance/swype/connect/Connect$3;

    invoke-direct {v1, p0}, Lcom/nuance/swype/connect/Connect$3;-><init>(Lcom/nuance/swype/connect/Connect;)V

    iput-object v1, p0, Lcom/nuance/swype/connect/Connect;->creatorThread:Ljava/lang/Thread;

    .line 1200
    new-instance v1, Lcom/nuance/swype/connect/Connect$6;

    invoke-direct {v1, p0}, Lcom/nuance/swype/connect/Connect$6;-><init>(Lcom/nuance/swype/connect/Connect;)V

    iput-object v1, p0, Lcom/nuance/swype/connect/Connect;->livingLanguageCallback:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;

    .line 1341
    new-instance v1, Lcom/nuance/swype/connect/Connect$7;

    invoke-direct {v1, p0}, Lcom/nuance/swype/connect/Connect$7;-><init>(Lcom/nuance/swype/connect/Connect;)V

    iput-object v1, p0, Lcom/nuance/swype/connect/Connect;->acDLMSyncCallback:Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    .line 914
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    .line 916
    invoke-static {p1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 917
    .local v0, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isStatisticsCollectionEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/connect/Connect;->isStaticsCollectionEnabled:Z

    .line 918
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isDataUsageOptAccepted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/connect/Connect;->isDataUsageOptInAccepted:Z

    .line 919
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isUsageCollectionEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/connect/Connect;->isUsageCollectionEnabled:Z

    .line 921
    invoke-static {p1}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 922
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->creatorThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 926
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/connect/Connect;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/connect/Connect;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->postStartEvents:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->getAccountService()Lcom/nuance/swypeconnect/ac/ACAccountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->accountService:Lcom/nuance/swypeconnect/ac/ACAccountService;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nuance/swype/connect/Connect;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->registerDefaultSyncCallback()V

    return-void
.end method

.method static synthetic access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->getDlmSyncService()Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500()Lcom/nuance/swype/util/LogManager$Trace;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/nuance/swype/connect/Connect;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/nuance/swype/connect/Connect;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->migrateInternalAccountData()V

    return-void
.end method

.method static synthetic access$1700(Lcom/nuance/swype/connect/Connect;)Ljava/util/regex/Pattern;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->mCoreVersionPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLanguage;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/nuance/swype/connect/Connect;Lcom/nuance/swypeconnect/ac/ACLanguage;)Lcom/nuance/swypeconnect/ac/ACLanguage;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;
    .param p1, "x1"    # Lcom/nuance/swypeconnect/ac/ACLanguage;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/nuance/swype/connect/Connect;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->imeIdle:Z

    return v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/connect/Connect;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->queue:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/nuance/swype/connect/Connect;)Ljava/util/Locale;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->initialLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/nuance/swype/connect/Connect;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;
    .param p1, "x1"    # Ljava/util/Locale;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect;->initialLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/nuance/swype/connect/Connect;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->creatorLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/nuance/swype/connect/Connect;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/nuance/swype/connect/Connect;->isLicensed:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/nuance/swype/connect/Connect;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->enableChineseCloudAll()V

    return-void
.end method

.method static synthetic access$2400(Lcom/nuance/swype/connect/Connect;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->postTosTasks()V

    return-void
.end method

.method static synthetic access$2500(Lcom/nuance/swype/connect/Connect;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->enableCatalogService()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->livingLanguageService:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACManager;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/nuance/swype/connect/Connect;Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/swypeconnect/ac/ACManager;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;
    .param p1, "x1"    # Lcom/nuance/swypeconnect/ac/ACManager;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    return-object p1
.end method

.method static synthetic access$700(Lcom/nuance/swype/connect/Connect;Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;
    .param p1, "x1"    # Lcom/nuance/swypeconnect/ac/ACManager;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/Connect;->getLivingLanguageService(Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/swype/connect/Connect;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->notificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/nuance/swype/connect/Connect;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;
    .param p1, "x1"    # Landroid/app/NotificationManager;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect;->notificationManager:Landroid/app/NotificationManager;

    return-object p1
.end method

.method static synthetic access$900(Lcom/nuance/swype/connect/Connect;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->unregisterDefaultSyncCallback()V

    return-void
.end method

.method private determineAccountAlarm()V
    .locals 8

    .prologue
    .line 1294
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/nuance/swype/input/R$bool;->enable_backup_and_sync:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1295
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    .line 1296
    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    .line 1298
    .local v2, "prefs":Lcom/nuance/swype/input/AppPreferences;
    invoke-virtual {v2}, Lcom/nuance/swype/input/AppPreferences;->getAccountNotificationPending()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1299
    invoke-virtual {v2}, Lcom/nuance/swype/input/AppPreferences;->getAccountNotificationShowAt()J

    move-result-wide v4

    .line 1301
    .local v4, "time":J
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1302
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1303
    .local v0, "cal":Ljava/util/Calendar;
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    .line 1304
    .local v1, "info":Lcom/nuance/swype/input/BuildInfo;
    const/4 v3, 0x5

    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->getAccountNotificationInDays()I

    move-result v6

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->add(II)V

    .line 1306
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1307
    invoke-virtual {v2, v4, v5}, Lcom/nuance/swype/input/AppPreferences;->setAccountNotificationShowAt(J)V

    .line 1310
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "info":Lcom/nuance/swype/input/BuildInfo;
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    const-string/jumbo v6, "alarm"

    .line 1311
    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 1312
    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->getAccountAlarmIntent()Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v3, v6, v4, v5, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1315
    .end local v2    # "prefs":Lcom/nuance/swype/input/AppPreferences;
    .end local v4    # "time":J
    :cond_1
    return-void
.end method

.method private enableCatalogService()V
    .locals 3

    .prologue
    .line 1065
    invoke-static {}, Lcom/nuance/swype/measure/UsecaseStopwatch;->getInstance()Lcom/nuance/swype/measure/UsecaseStopwatch;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/measure/Usecases;->ENABLE_CATALOG_SERVICE:Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/measure/UsecaseStopwatch;->start(Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;)V

    .line 1066
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v0

    .line 1067
    .local v0, "cm":Lcom/nuance/swype/inapp/CatalogManager;
    if-eqz v0, :cond_0

    .line 1068
    invoke-virtual {v0}, Lcom/nuance/swype/inapp/CatalogManager;->setUpService()V

    .line 1070
    :cond_0
    return-void
.end method

.method private enableChineseCloudAll()V
    .locals 2

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->isGooglePlayChina()Z

    move-result v0

    .line 1040
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->isOptInAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1041
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    const-string/jumbo v1, "chinese_cloud_all"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setChineseCloudNetworkOption(Ljava/lang/String;)V

    .line 1043
    :cond_0
    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 934
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    return-object v0
.end method

.method private getAccountAlarmIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 1326
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    const-class v2, Lcom/nuance/swype/connect/AccountCreationBroadcastReciever;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1327
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.example.android.receivers.NOTIFICATION_ALARM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1328
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    const v2, 0x2f145

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getAccountService()Lcom/nuance/swypeconnect/ac/ACAccountService;
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1270
    sget-object v1, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "getAccountService() "

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->accountService:Lcom/nuance/swypeconnect/ac/ACAccountService;

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1271
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->accountService:Lcom/nuance/swypeconnect/ac/ACAccountService;

    if-eqz v1, :cond_0

    .line 1272
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->accountService:Lcom/nuance/swypeconnect/ac/ACAccountService;

    .line 1290
    :goto_0
    return-object v1

    .line 1274
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->isUserUnlockFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1275
    :cond_1
    sget-object v1, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "Connect not available"

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 1276
    const/4 v1, 0x0

    goto :goto_0

    .line 1281
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v1

    const-string/jumbo v2, "ACCOUNT"

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACAccountService;

    iput-object v1, p0, Lcom/nuance/swype/connect/Connect;->accountService:Lcom/nuance/swypeconnect/ac/ACAccountService;

    .line 1283
    sget-object v1, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "getAccountService: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nuance/swype/connect/Connect;->accountService:Lcom/nuance/swypeconnect/ac/ACAccountService;

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1290
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->accountService:Lcom/nuance/swypeconnect/ac/ACAccountService;

    goto :goto_0

    .line 1285
    :catch_0
    move-exception v0

    .line 1286
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getReasonCode()I

    move-result v1

    const/16 v2, 0x68

    if-eq v1, v2, :cond_3

    .line 1287
    sget-object v1, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error getting account service: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private getDlmSyncService()Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1380
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    if-eqz v2, :cond_0

    .line 1381
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    .line 1402
    :goto_0
    return-object v2

    .line 1383
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectLegal;->isOptInAccepted()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 1385
    .local v1, "legalAccepted":Z
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->isUserUnlockFinished()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1386
    :cond_1
    sget-object v2, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v4, "Connect not available"

    invoke-interface {v2, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    move-object v2, v3

    .line 1387
    goto :goto_0

    .line 1383
    .end local v1    # "legalAccepted":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1390
    .restart local v1    # "legalAccepted":Z
    :cond_3
    if-nez v1, :cond_4

    .line 1391
    sget-object v2, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v4, "legal is not accepted."

    invoke-interface {v2, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    move-object v2, v3

    .line 1392
    goto :goto_0

    .line 1396
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string/jumbo v4, "DLM_SYNC_SERVICE"

    invoke-virtual {v2, v4}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v2

    check-cast v2, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    iput-object v2, p0, Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    .line 1397
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    iget-object v4, p0, Lcom/nuance/swype/connect/Connect;->acDLMSyncCallback:Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    invoke-virtual {v2, v4}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;)V

    .line 1398
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1399
    :catch_0
    move-exception v0

    .line 1400
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    sget-object v2, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getSyncService() "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    move-object v2, v3

    .line 1402
    goto :goto_0
.end method

.method private getLivingLanguageService(Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;
    .locals 4
    .param p1, "manager"    # Lcom/nuance/swypeconnect/ac/ACManager;

    .prologue
    .line 1238
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->livingLanguageService:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    if-eqz v1, :cond_0

    .line 1239
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->livingLanguageService:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    .line 1258
    :goto_0
    return-object v1

    .line 1242
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectStarted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1243
    :cond_1
    sget-object v1, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "Connect not available"

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 1244
    const/4 v1, 0x0

    goto :goto_0

    .line 1248
    :cond_2
    :try_start_0
    const-string/jumbo v1, "LIVING_LANGUAGE"

    invoke-virtual {p1, v1}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    iput-object v1, p0, Lcom/nuance/swype/connect/Connect;->livingLanguageService:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    .line 1249
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->livingLanguageService:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    if-eqz v1, :cond_3

    .line 1250
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->livingLanguageService:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->livingLanguageCallback:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->livingLanguageService:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    goto :goto_0

    .line 1252
    :catch_0
    move-exception v0

    .line 1253
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getReasonCode()I

    move-result v1

    const/16 v2, 0x68

    if-eq v1, v2, :cond_3

    .line 1254
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getReasonCode()I

    move-result v1

    const/16 v2, 0x7e

    if-eq v1, v2, :cond_3

    .line 1255
    sget-object v1, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error getting living language service: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private isExistFilesDir()Z
    .locals 1

    .prologue
    .line 2106
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 2108
    if-nez v0, :cond_0

    .line 2109
    const/4 v0, 0x0

    .line 2112
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isLicenseFileValid()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1078
    sget-object v1, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v2, [Ljava/lang/Object;

    const-string/jumbo v5, "isLicenseFileValid()"

    aput-object v5, v4, v3

    invoke-interface {v1, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1079
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->licenseFileValid:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 1080
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/License;->getLicense(Landroid/content/Context;)Lcom/nuance/swype/input/License;

    move-result-object v0

    .line 1081
    .local v0, "currentLicense":Lcom/nuance/swype/input/License;
    sget-object v4, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x6

    new-array v5, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "currentLicense "

    aput-object v1, v5, v3

    aput-object v0, v5, v2

    const/4 v1, 0x2

    const-string/jumbo v6, " currentLicense.isValid(context) "

    aput-object v6, v5, v1

    const/4 v6, 0x3

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    .line 1082
    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/License;->isValid(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x4

    const-string/jumbo v6, " currentLicense.isDisabled() "

    aput-object v6, v5, v1

    const/4 v1, 0x5

    if-eqz v0, :cond_3

    .line 1083
    invoke-virtual {v0}, Lcom/nuance/swype/input/License;->isDisabled()Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    .line 1081
    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1084
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/License;->isValid(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/License;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1085
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/nuance/swype/connect/Connect;->licenseFileValid:Ljava/lang/Boolean;

    .line 1090
    .end local v0    # "currentLicense":Lcom/nuance/swype/input/License;
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->licenseFileValid:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .restart local v0    # "currentLicense":Lcom/nuance/swype/input/License;
    :cond_2
    move v1, v3

    .line 1082
    goto :goto_0

    :cond_3
    move v2, v3

    .line 1083
    goto :goto_1

    .line 1087
    :cond_4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/nuance/swype/connect/Connect;->licenseFileValid:Ljava/lang/Boolean;

    goto :goto_2
.end method

.method private migrateChineseDictionaryData()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1888
    iget-object v6, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v5

    .line 1889
    .local v5, "prefs":Lcom/nuance/swype/input/AppPreferences;
    sget-object v6, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v7, v14, [Ljava/lang/Object;

    const-string/jumbo v8, "migrateChineseDictionaryData() upgrade: "

    aput-object v8, v7, v12

    invoke-virtual {v5}, Lcom/nuance/swype/input/AppPreferences;->getUpgradeConnect()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1890
    invoke-virtual {v5}, Lcom/nuance/swype/input/AppPreferences;->getUpgradeConnect()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1891
    sget-object v6, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v7, v13, [Ljava/lang/Object;

    const-string/jumbo v8, "Removing old Chinese DBs"

    aput-object v8, v7, v12

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1892
    iget-object v6, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v3

    .line 1893
    .local v3, "im":Lcom/nuance/swype/input/InputMethods;
    new-instance v1, Lcom/nuance/swype/input/CategoryDBList;

    iget-object v6, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/nuance/swype/input/CategoryDBList;-><init>(Landroid/content/Context;)V

    .line 1894
    .local v1, "cdbList":Lcom/nuance/swype/input/CategoryDBList;
    invoke-virtual {v1}, Lcom/nuance/swype/input/CategoryDBList;->getAvailableCatDbList()Ljava/util/Map;

    move-result-object v6

    .line 1895
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1896
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/nuance/swype/input/InputMethods;->findLanguageFromName(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v4

    .line 1897
    .local v4, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1898
    .local v0, "catInfo":Ljava/lang/String;
    sget-object v8, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "Removing... File="

    aput-object v10, v9, v12

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/CategoryDBList;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    const-string/jumbo v10, ", Id="

    aput-object v10, v9, v14

    const/4 v10, 0x3

    .line 1899
    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/CategoryDBList;->getFileId(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, ", Lang="

    aput-object v11, v9, v10

    const/4 v10, 0x5

    iget v11, v4, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    .line 1900
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 1898
    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1902
    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/CategoryDBList;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1903
    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/CategoryDBList;->getFileId(Ljava/lang/String;)I

    move-result v9

    iget v10, v4, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    .line 1901
    invoke-virtual {v1, v8, v9, v10}, Lcom/nuance/swype/input/CategoryDBList;->uninstallDownloadedCategoryDB(Ljava/lang/String;II)Z

    goto :goto_0

    .line 1908
    .end local v0    # "catInfo":Ljava/lang/String;
    .end local v1    # "cdbList":Lcom/nuance/swype/input/CategoryDBList;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "im":Lcom/nuance/swype/input/InputMethods;
    .end local v4    # "lang":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_1
    return-void
.end method

.method private migrateInternalAccountData()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1854
    iget-object v5, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v3

    .line 1855
    .local v3, "prefs":Lcom/nuance/swype/input/AppPreferences;
    sget-object v5, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "migrateInternalAccountData() upgrade: "

    aput-object v7, v6, v8

    invoke-virtual {v3}, Lcom/nuance/swype/input/AppPreferences;->getUpgradeConnect()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1856
    invoke-virtual {v3}, Lcom/nuance/swype/input/AppPreferences;->getUpgradeConnect()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1858
    iget-object v5, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    const-string/jumbo v6, "com.nuance.swype.connect.store.FilePreference"

    invoke-static {}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaLegacySecretKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/nuance/connect/store/DataStoreFactory;->getDataStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v4

    .line 1859
    .local v4, "store":Lcom/nuance/connect/store/PersistentDataStore;
    const-string/jumbo v5, "account_ACCOUNT"

    invoke-interface {v4, v5}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1860
    sget-object v5, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "Found old data format, converting to JSON"

    aput-object v7, v6, v8

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1863
    :try_start_0
    const-string/jumbo v5, "account_ACCOUNT"

    invoke-interface {v4, v5}, Lcom/nuance/connect/store/PersistentDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1865
    .local v0, "accounts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/nuance/swype/connect/api/ConnectAccount;>;"
    const/4 v2, 0x0

    .line 1866
    .local v2, "activeAccount":Lcom/nuance/swype/connect/api/ConnectAccount;
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1867
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/api/ConnectAccount;

    .line 1868
    .local v1, "acct":Lcom/nuance/swype/connect/api/ConnectAccount;
    invoke-virtual {v1}, Lcom/nuance/swype/connect/api/ConnectAccount;->getAccountState()Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    move-result-object v5

    sget-object v7, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    invoke-virtual {v5, v7}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1869
    invoke-virtual {v1}, Lcom/nuance/swype/connect/api/ConnectAccount;->getAccountState()Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    move-result-object v5

    sget-object v7, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    invoke-virtual {v5, v7}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1870
    :cond_1
    move-object v2, v1

    .line 1874
    .end local v1    # "acct":Lcom/nuance/swype/connect/api/ConnectAccount;
    :cond_2
    if-eqz v2, :cond_3

    .line 1875
    const-string/jumbo v5, "account_ACTIVE_ACCOUNT"

    invoke-virtual {v2}, Lcom/nuance/swype/connect/api/ConnectAccount;->toJsonString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1880
    .end local v0    # "accounts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/nuance/swype/connect/api/ConnectAccount;>;"
    .end local v2    # "activeAccount":Lcom/nuance/swype/connect/api/ConnectAccount;
    :cond_3
    :goto_0
    const-string/jumbo v5, "account_ACCOUNT"

    invoke-interface {v4, v5}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    .line 1883
    .end local v4    # "store":Lcom/nuance/connect/store/PersistentDataStore;
    :cond_4
    return-void

    .line 1878
    .restart local v4    # "store":Lcom/nuance/connect/store/PersistentDataStore;
    :catch_0
    move-exception v5

    sget-object v5, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "Unable to convert old account data."

    aput-object v7, v6, v8

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private postTosTasks()V
    .locals 1

    .prologue
    .line 1059
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/Connect;->setupACListeners(Lcom/nuance/swypeconnect/ac/ACManager;)V

    .line 1060
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/Connect;->setupSupportedLanguages(Lcom/nuance/swypeconnect/ac/ACManager;)V

    .line 1061
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->enableChineseCloudAll()V

    .line 1062
    return-void
.end method

.method private declared-synchronized registerDefaultSyncCallback()V
    .locals 2

    .prologue
    .line 522
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->defaultSyncCallback:Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;

    if-nez v0, :cond_0

    .line 523
    new-instance v0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;-><init>(Lcom/nuance/swype/connect/Connect;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/Connect;->defaultSyncCallback:Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;

    .line 524
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->defaultSyncCallback:Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/Connect$Accounts;->registerCallback(Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    :cond_0
    monitor-exit p0

    return-void

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setupACListeners(Lcom/nuance/swypeconnect/ac/ACManager;)V
    .locals 3
    .param p1, "manager"    # Lcom/nuance/swypeconnect/ac/ACManager;

    .prologue
    .line 1421
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/Connect;->getLivingLanguageService(Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->livingLanguageService:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->livingLanguageCallback:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;)V

    .line 1426
    :cond_0
    :try_start_0
    const-string/jumbo v0, "CHINESE_DICTIONARY_SERVICE"

    .line 1427
    invoke-virtual {p1, v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iput-object v0, p0, Lcom/nuance/swype/connect/Connect;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    .line 1429
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->chineseListCallback:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;Z)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1432
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private start()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 775
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->isExistFilesDir()Z

    move-result v4

    if-nez v4, :cond_1

    .line 776
    sget-object v4, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v5, "Get files dir error!"

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 886
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 782
    iget-object v4, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    .line 783
    .local v3, "prefs":Lcom/nuance/swype/input/UserPreferences;
    const/4 v2, 0x1

    .line 785
    .local v2, "isEnableConnectForNetworkAccess":Z
    iget-object v4, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 786
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getNetworkAgreement()Z

    move-result v4

    if-nez v4, :cond_2

    .line 787
    const/4 v2, 0x0

    .line 789
    :cond_2
    if-eqz v2, :cond_0

    .line 793
    iget-object v4, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    .line 794
    .local v1, "info":Lcom/nuance/swype/input/BuildInfo;
    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->isTrialBuild()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 795
    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->updateExpirationPeriod()V

    .line 797
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->isLicenseFileValid()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->isTrialExpired()Z

    move-result v4

    if-nez v4, :cond_4

    .line 798
    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->isConnectEnabled()Z

    move-result v4

    if-nez v4, :cond_6

    .line 799
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 800
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->stop()V

    .line 802
    :cond_5
    sget-object v4, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "license file is not valid; disabling sdk service"

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0

    .line 807
    :cond_6
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->migrateChineseDictionaryData()V

    .line 809
    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->getMaxConnectionsCellular()I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/connect/Connect;->maxConnectionsCellular:I

    .line 810
    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->getMaxConnectionsWifi()I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/connect/Connect;->maxConnectionsWifi:I

    .line 811
    iget-object v4, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectStarted()Z

    move-result v4

    if-nez v4, :cond_8

    .line 813
    :try_start_0
    sget-object v4, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v5, "acManager.start()"

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 814
    iget-object v4, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACManager;->start()V

    .line 815
    iget-object v4, p0, Lcom/nuance/swype/connect/Connect;->initialLanguage:[I

    if-eqz v4, :cond_7

    .line 816
    iget-object v4, p0, Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    iget-object v5, p0, Lcom/nuance/swype/connect/Connect;->initialLanguage:[I

    invoke-virtual {v4, v5}, Lcom/nuance/swypeconnect/ac/ACLanguage;->setActiveLanguages([I)V

    .line 817
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/nuance/swype/connect/Connect;->initialLanguage:[I

    .line 819
    :cond_7
    iget-object v4, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-direct {p0, v4}, Lcom/nuance/swype/connect/Connect;->setupACListeners(Lcom/nuance/swypeconnect/ac/ACManager;)V

    .line 820
    iget-object v4, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/connect/Connect;->setupSupportedLanguages(Lcom/nuance/swypeconnect/ac/ACManager;)V

    .line 821
    new-instance v4, Lcom/nuance/swype/connect/Connect$4;

    iget-object v5, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/nuance/swype/connect/Connect$4;-><init>(Lcom/nuance/swype/connect/Connect;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nuance/swype/connect/Connect;->connection:Lcom/nuance/swype/connect/ConnectedStatus;

    .line 870
    iget-object v4, p0, Lcom/nuance/swype/connect/Connect;->connection:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectedStatus;->register()V

    .line 871
    iget-object v4, p0, Lcom/nuance/swype/connect/Connect;->connection:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectedStatus;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 872
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->doUpgrade()V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    :cond_8
    :goto_1
    iput-boolean v7, p0, Lcom/nuance/swype/connect/Connect;->created:Z

    .line 880
    iget-object v4, p0, Lcom/nuance/swype/connect/Connect;->queue:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 884
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->determineAccountAlarm()V

    goto/16 :goto_0

    .line 874
    :catch_0
    move-exception v0

    .line 875
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    sget-object v4, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Failed to start service: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private declared-synchronized unregisterDefaultSyncCallback()V
    .locals 2

    .prologue
    .line 529
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->defaultSyncCallback:Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->defaultSyncCallback:Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/Connect$Accounts;->unregisterCallback(Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;)V

    .line 531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/connect/Connect;->defaultSyncCallback:Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    :cond_0
    monitor-exit p0

    return-void

    .line 529
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateReportingConfiguration()V
    .locals 4

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->reportingService:Lcom/nuance/swypeconnect/ac/ACReportingService;

    if-eqz v0, :cond_1

    .line 1183
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v0

    .line 1184
    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->isOptInAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->isDataUsageOptInAccepted:Z

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->reportingService:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService;->enableReporting()V

    .line 1193
    :goto_0
    return-void

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->reportingService:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService;->disableReporting()V

    goto :goto_0

    .line 1191
    :cond_1
    sget-object v0, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "updateReportingConfiguration: reportingService is null!"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public clearPostStartEvents()V
    .locals 2

    .prologue
    .line 987
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->queue:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 988
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->postStartEvents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 989
    return-void
.end method

.method public dismissAccountAlarm()V
    .locals 2

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 1319
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setAccountNotificationPending(Z)V

    .line 1321
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1322
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->getAccountAlarmIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1323
    return-void
.end method

.method public doDelayedStart()V
    .locals 1

    .prologue
    .line 1960
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1961
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->start()V

    .line 1963
    :cond_0
    return-void
.end method

.method public doPostStart(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 979
    iget-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->created:Z

    if-eqz v0, :cond_0

    .line 980
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 984
    :goto_0
    return-void

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->postStartEvents:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public doUpgrade()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1839
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 1840
    .local v0, "prefs":Lcom/nuance/swype/input/AppPreferences;
    sget-object v1, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "doUpgrade() isUpgrade: "

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->getUpgradeConnect()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1841
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->getUpgradeConnect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1842
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->isConnectLivingLanguageAllowed_Deprecated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1843
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/Connect;->getLivingLanguage(Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)Lcom/nuance/swype/connect/Connect$LivingLanguage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->enable()V

    .line 1845
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->removeConnectLivingLanguageAllowed_Deprecated()V

    .line 1846
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getDictionaryDownloadManager()Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->upgrade()V

    .line 1847
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect$Sync;->upgrade()V

    .line 1848
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getUpdates()Lcom/nuance/swype/connect/SDKUpdateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKUpdateManager;->upgrade()V

    .line 1849
    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/AppPreferences;->setUpgradeConnect(Z)V

    .line 1851
    :cond_1
    return-void
.end method

.method public enableCellularData(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 1046
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    if-eqz v1, :cond_0

    .line 1047
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACManager;->getConfiguration()Lcom/nuance/swypeconnect/ac/ACConfiguration;

    move-result-object v0

    .line 1049
    .local v0, "config":Lcom/nuance/swypeconnect/ac/ACConfiguration;
    :try_start_0
    sget-object v1, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "backgroundData(true,"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", enabled)"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1050
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p1}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->backgroundData(ZZZ)V

    .line 1051
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p1}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->foregroundData(ZZZ)V

    .line 1052
    sget-object v1, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "foregroundData(true,"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ")"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1056
    .end local v0    # "config":Lcom/nuance/swypeconnect/ac/ACConfiguration;
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "config":Lcom/nuance/swypeconnect/ac/ACConfiguration;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;
    .locals 1

    .prologue
    .line 1332
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->getAccountService()Lcom/nuance/swypeconnect/ac/ACAccountService;

    .line 1333
    new-instance v0, Lcom/nuance/swype/connect/Connect$Accounts;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/Connect$Accounts;-><init>(Lcom/nuance/swype/connect/Connect;)V

    return-object v0
.end method

.method public getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2009
    sget-object v3, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v7, [Ljava/lang/Object;

    const-string/jumbo v5, "Getting catalog service"

    aput-object v5, v4, v6

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2010
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->catalogService:Lcom/nuance/swypeconnect/ac/ACCatalogService;

    if-eqz v3, :cond_0

    .line 2011
    sget-object v2, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "Returning cached catalog service"

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2012
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->catalogService:Lcom/nuance/swypeconnect/ac/ACCatalogService;

    .line 2045
    :goto_0
    return-object v2

    .line 2014
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->isUserUnlockFinished()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2015
    :cond_1
    sget-object v3, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v4, "Connect not available"

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 2018
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2019
    sget-object v3, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v4, "legal is not accepted."

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 2022
    :cond_3
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v3

    .line 2023
    invoke-virtual {v3}, Lcom/nuance/swype/input/BuildInfo;->isDownloadableThemesEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2024
    sget-object v3, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v7, [Ljava/lang/Object;

    const-string/jumbo v5, "Disable CatalogService for builds without the In-app Store"

    aput-object v5, v4, v6

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0

    .line 2028
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v1

    .line 2029
    .local v1, "manager":Lcom/nuance/swypeconnect/ac/ACManager;
    const-string/jumbo v2, "CATALOG_SERVICE"

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v2

    check-cast v2, Lcom/nuance/swypeconnect/ac/ACCatalogService;

    iput-object v2, p0, Lcom/nuance/swype/connect/Connect;->catalogService:Lcom/nuance/swypeconnect/ac/ACCatalogService;

    .line 2030
    sget-object v2, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "Catalog service retrieved."

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2031
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->catalogService:Lcom/nuance/swypeconnect/ac/ACCatalogService;

    if-eqz v2, :cond_5

    .line 2032
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectLegal;->isOptInAccepted()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2033
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->catalogService:Lcom/nuance/swypeconnect/ac/ACCatalogService;

    invoke-interface {v2}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->enableCatalog()V

    .line 2034
    sget-object v2, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "Catalog service enabled."

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2045
    .end local v1    # "manager":Lcom/nuance/swypeconnect/ac/ACManager;
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->catalogService:Lcom/nuance/swypeconnect/ac/ACCatalogService;

    goto/16 :goto_0

    .line 2042
    :catch_0
    move-exception v0

    .line 2043
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    sget-object v2, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error getting the catalog service: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getChineseDictionaryDownloadService()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    .locals 5

    .prologue
    .line 1114
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    if-eqz v2, :cond_0

    .line 1115
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    .line 1132
    :goto_0
    return-object v2

    .line 1117
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->isUserUnlockFinished()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1118
    :cond_1
    sget-object v2, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v3, "Connect not available"

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    .line 1119
    const/4 v2, 0x0

    goto :goto_0

    .line 1122
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v1

    .line 1123
    .local v1, "manager":Lcom/nuance/swypeconnect/ac/ACManager;
    const-string/jumbo v2, "CHINESE_DICTIONARY_SERVICE"

    .line 1124
    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v2

    check-cast v2, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iput-object v2, p0, Lcom/nuance/swype/connect/Connect;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    .line 1126
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->chineseListCallback:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;

    iget-object v4, p0, Lcom/nuance/swype/connect/Connect;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    .line 1127
    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isDictionaryListAvailable()Z

    move-result v4

    .line 1126
    invoke-virtual {v2, v3, v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;Z)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1132
    .end local v1    # "manager":Lcom/nuance/swypeconnect/ac/ACManager;
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    goto :goto_0

    .line 1129
    :catch_0
    move-exception v0

    .line 1130
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    sget-object v2, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error getting the chinese dictionary download service: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getChinesePredictionService()Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;
    .locals 5

    .prologue
    .line 1140
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->chinesePredictionService:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

    if-eqz v2, :cond_0

    .line 1141
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->chinesePredictionService:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

    .line 1156
    :goto_0
    return-object v2

    .line 1144
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->isUserUnlockFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1145
    const/4 v2, 0x0

    goto :goto_0

    .line 1148
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v1

    .line 1149
    .local v1, "manager":Lcom/nuance/swypeconnect/ac/ACManager;
    const-string/jumbo v2, "CHINESE_CLOUD_PREDICTION"

    .line 1150
    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v2

    check-cast v2, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

    iput-object v2, p0, Lcom/nuance/swype/connect/Connect;->chinesePredictionService:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1156
    .end local v1    # "manager":Lcom/nuance/swypeconnect/ac/ACManager;
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->chinesePredictionService:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;

    goto :goto_0

    .line 1153
    :catch_0
    move-exception v0

    .line 1154
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    sget-object v2, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error getting the chinese cloud prediction service: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDLMConnector()Lcom/nuance/swypeconnect/ac/ACDLMConnector;
    .locals 5

    .prologue
    .line 1098
    const/4 v0, 0x0

    .line 1100
    .local v0, "dlmConnector":Lcom/nuance/swypeconnect/ac/ACDLMConnector;
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getDLMConnector()Lcom/nuance/swypeconnect/ac/ACDLMConnector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1106
    :goto_0
    return-object v0

    .line 1101
    :catch_0
    move-exception v1

    .line 1102
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getDLMConnector error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 1103
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1977
    iget-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->created:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1979
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string/jumbo v1, "DEVICE"

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACDeviceService;

    .line 1980
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDeviceService;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1984
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getDictionaryDownloadManager()Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;
    .locals 3

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->dictionaryDownloadManager:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    if-nez v0, :cond_0

    .line 1757
    new-instance v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;-><init>(Landroid/content/Context;Lcom/nuance/swypeconnect/ac/ACManager;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/Connect;->dictionaryDownloadManager:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    .line 1759
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->dictionaryDownloadManager:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    return-object v0
.end method

.method public declared-synchronized getDownloadManager()Lcom/nuance/swype/connect/SDKDownloadManager;
    .locals 3

    .prologue
    .line 1747
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    if-nez v0, :cond_0

    .line 1748
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager;

    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;-><init>(Landroid/content/Context;Lcom/nuance/swypeconnect/ac/ACManager;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/Connect;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    .line 1750
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->init()Z

    .line 1752
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1747
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getISOCountry()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2066
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2068
    :try_start_0
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getLocation()Lcom/nuance/swypeconnect/ac/ACManager$ACLocation;

    move-result-object v1

    .line 2069
    .local v1, "location":Lcom/nuance/swypeconnect/ac/ACManager$ACLocation;
    if-eqz v1, :cond_0

    .line 2070
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACManager$ACLocation;->getISOCountry()Ljava/lang/String;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2077
    .end local v1    # "location":Lcom/nuance/swypeconnect/ac/ACManager$ACLocation;
    :goto_0
    return-object v2

    .line 2072
    :catch_0
    move-exception v0

    .line 2073
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    sget-object v2, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "get location failed:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 2074
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    .line 2077
    .end local v0    # "e":Lcom/nuance/swypeconnect/ac/ACException;
    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public getLegal()Lcom/nuance/swype/connect/ConnectLegal;
    .locals 2

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->connectLegal:Lcom/nuance/swype/connect/ConnectLegal;

    if-nez v0, :cond_0

    .line 1009
    new-instance v0, Lcom/nuance/swype/connect/ConnectLegal;

    new-instance v1, Lcom/nuance/swype/connect/Connect$5;

    invoke-direct {v1, p0}, Lcom/nuance/swype/connect/Connect$5;-><init>(Lcom/nuance/swype/connect/Connect;)V

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/connect/ConnectLegal;-><init>(Lcom/nuance/swype/connect/Connect;Lcom/nuance/swype/connect/ConnectLegal$DocumentAcceptedCallback;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/Connect;->connectLegal:Lcom/nuance/swype/connect/ConnectLegal;

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->connectLegal:Lcom/nuance/swype/connect/ConnectLegal;

    return-object v0
.end method

.method public getLivingLanguage(Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)Lcom/nuance/swype/connect/Connect$LivingLanguage;
    .locals 1
    .param p1, "presenter"    # Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    .prologue
    .line 1262
    new-instance v0, Lcom/nuance/swype/connect/Connect$LivingLanguage;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/connect/Connect$LivingLanguage;-><init>(Lcom/nuance/swype/connect/Connect;Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)V

    return-object v0
.end method

.method public getOemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    if-eqz v0, :cond_0

    .line 1997
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getBuildInfo()Lcom/nuance/swypeconnect/ac/ACBuildInfo;

    move-result-object v0

    .line 1998
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACBuildInfo;->getOemId()Ljava/lang/String;

    move-result-object v0

    .line 2000
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getReportingService()Lcom/nuance/swypeconnect/ac/ACReportingService;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1160
    iget-object v4, p0, Lcom/nuance/swype/connect/Connect;->reportingService:Lcom/nuance/swypeconnect/ac/ACReportingService;

    if-eqz v4, :cond_1

    .line 1161
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->reportingService:Lcom/nuance/swypeconnect/ac/ACReportingService;

    .line 1178
    :cond_0
    :goto_0
    return-object v3

    .line 1163
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->isUserUnlockFinished()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1166
    iget-object v4, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v1

    .line 1167
    .local v1, "legal":Lcom/nuance/swype/connect/ConnectLegal;
    iget-boolean v4, p0, Lcom/nuance/swype/connect/Connect;->created:Z

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectLegal;->isOptInAccepted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1172
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v2

    .line 1173
    .local v2, "manager":Lcom/nuance/swypeconnect/ac/ACManager;
    const-string/jumbo v3, "REPORTING_SERVICE"

    invoke-virtual {v2, v3}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v3

    check-cast v3, Lcom/nuance/swypeconnect/ac/ACReportingService;

    iput-object v3, p0, Lcom/nuance/swype/connect/Connect;->reportingService:Lcom/nuance/swypeconnect/ac/ACReportingService;

    .line 1174
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->updateReportingConfiguration()V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    .end local v2    # "manager":Lcom/nuance/swypeconnect/ac/ACManager;
    :goto_1
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->reportingService:Lcom/nuance/swypeconnect/ac/ACReportingService;

    goto :goto_0

    .line 1175
    :catch_0
    move-exception v0

    .line 1176
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    sget-object v3, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Error getting the reporting service: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;
    .locals 2

    .prologue
    .line 958
    iget-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->created:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    .line 959
    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->isUserUnlockFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    .line 971
    :goto_0
    return-object v0

    .line 964
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->creatorLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    :goto_1
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->queue:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 970
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->start()V

    .line 971
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    goto :goto_0

    .line 966
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public getScannerService()Lcom/nuance/swypeconnect/ac/ACScannerService;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2081
    sget-object v3, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v7, [Ljava/lang/Object;

    const-string/jumbo v5, "Getting scanner service"

    aput-object v5, v4, v6

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2082
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->scannerService:Lcom/nuance/swypeconnect/ac/ACScannerService;

    if-eqz v3, :cond_0

    .line 2083
    sget-object v2, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "Returning cached scanner service"

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2084
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->scannerService:Lcom/nuance/swypeconnect/ac/ACScannerService;

    .line 2100
    :goto_0
    return-object v2

    .line 2086
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->isUserUnlockFinished()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2087
    :cond_1
    sget-object v3, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v4, "Connect not available"

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 2090
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2091
    sget-object v3, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v4, "legal is not accepted."

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 2095
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v1

    .line 2096
    .local v1, "manager":Lcom/nuance/swypeconnect/ac/ACManager;
    const-string/jumbo v2, "SCANNER_SERVICE"

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v2

    check-cast v2, Lcom/nuance/swypeconnect/ac/ACScannerService;

    iput-object v2, p0, Lcom/nuance/swype/connect/Connect;->scannerService:Lcom/nuance/swypeconnect/ac/ACScannerService;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2100
    .end local v1    # "manager":Lcom/nuance/swypeconnect/ac/ACManager;
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->scannerService:Lcom/nuance/swypeconnect/ac/ACScannerService;

    goto :goto_0

    .line 2097
    :catch_0
    move-exception v0

    .line 2098
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    sget-object v2, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error getting the scanner service: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getSwyperId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1966
    iget-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->created:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1968
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string/jumbo v1, "DEVICE"

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACDeviceService;

    .line 1969
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDeviceService;->getSwyperId()Ljava/lang/String;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1973
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getSync()Lcom/nuance/swype/connect/Connect$Sync;
    .locals 2

    .prologue
    .line 1406
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->getDlmSyncService()Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    .line 1407
    new-instance v0, Lcom/nuance/swype/connect/Connect$Sync;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/connect/Connect$Sync;-><init>(Lcom/nuance/swype/connect/Connect;Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)V

    return-object v0
.end method

.method public getSync(Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)Lcom/nuance/swype/connect/Connect$Sync;
    .locals 1
    .param p1, "presenter"    # Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    .prologue
    .line 1411
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->getDlmSyncService()Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    .line 1412
    new-instance v0, Lcom/nuance/swype/connect/Connect$Sync;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/connect/Connect$Sync;-><init>(Lcom/nuance/swype/connect/Connect;Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)V

    return-object v0
.end method

.method public getUpdates()Lcom/nuance/swype/connect/SDKUpdateManager;
    .locals 1

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    if-nez v0, :cond_0

    .line 1726
    new-instance v0, Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/SDKUpdateManager;-><init>(Lcom/nuance/swype/connect/Connect;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/Connect;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    .line 1728
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    if-eqz v0, :cond_0

    .line 1989
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getBuildInfo()Lcom/nuance/swypeconnect/ac/ACBuildInfo;

    move-result-object v0

    .line 1990
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACBuildInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 1992
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public isCreated()Z
    .locals 1

    .prologue
    .line 996
    iget-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->created:Z

    return v0
.end method

.method public isDataUsageOptInAccepted()Z
    .locals 1

    .prologue
    .line 1944
    iget-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->isDataUsageOptInAccepted:Z

    return v0
.end method

.method public isForegroundCellularConnected()Z
    .locals 1

    .prologue
    .line 1004
    iget-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->cellularConnected:Z

    return v0
.end method

.method public isForegroundWifiConnected()Z
    .locals 1

    .prologue
    .line 1000
    iget-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->wifiConnected:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->connection:Lcom/nuance/swype/connect/ConnectedStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->connection:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLicensed()Z
    .locals 1

    .prologue
    .line 1956
    iget-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->isLicensed:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->isLicenseFileValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 992
    iget-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->created:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStatisticsCollectionEnabled()Z
    .locals 1

    .prologue
    .line 1948
    iget-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->isStaticsCollectionEnabled:Z

    return v0
.end method

.method public isUsageCollectionEnabled()Z
    .locals 1

    .prologue
    .line 1952
    iget-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->isUsageCollectionEnabled:Z

    return v0
.end method

.method public learnContextBuffer(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "contextBuffer"    # Ljava/lang/String;
    .param p2, "enterKeySelected"    # Z

    .prologue
    .line 1802
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/connect/Connect;->onFinishInput(Ljava/lang/String;Z)V

    .line 1803
    return-void
.end method

.method public onFinishInput(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "enterKeySelected"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1789
    sget-object v0, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onFinishInput language="

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, ", buffer="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, " enterKeySelected="

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1790
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    if-eqz v0, :cond_0

    .line 1791
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    .line 1792
    invoke-static {v1}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->filterInputBuffer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nuance/swype/connect/Connect$SessionState;

    invoke-direct {v2, p2}, Lcom/nuance/swype/connect/Connect$SessionState;-><init>(Z)V

    .line 1791
    invoke-virtual {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACLanguage;->onFinishInput(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguage$InputSessionState;)V

    .line 1798
    :goto_0
    return-void

    .line 1796
    :cond_0
    iput-boolean v4, p0, Lcom/nuance/swype/connect/Connect;->imeIdle:Z

    goto :goto_0
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 5
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1779
    sget-object v0, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onStartInput language="

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1780
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    if-eqz v0, :cond_0

    .line 1781
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACLanguage;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1786
    :goto_0
    return-void

    .line 1784
    :cond_0
    iput-boolean v4, p0, Lcom/nuance/swype/connect/Connect;->imeIdle:Z

    goto :goto_0
.end method

.method public removeInvalidatedLanguage(I)V
    .locals 1
    .param p1, "languageId"    # I

    .prologue
    .line 2054
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getDownloadManager()Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/SDKDownloadManager;->removeLanguageFromList(I)V

    .line 2058
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/Connect;->setupSupportedLanguages(Lcom/nuance/swypeconnect/ac/ACManager;)V

    .line 2059
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2116
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    .line 2117
    return-void
.end method

.method public setContributeUsageData(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1915
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 1919
    .local v0, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/UserPreferences;->setDataUsageOptStatus(Z)V

    .line 1920
    iput-boolean p1, p0, Lcom/nuance/swype/connect/Connect;->isDataUsageOptInAccepted:Z

    .line 1922
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/UserPreferences;->setUsageCollectionEnabled(Z)V

    .line 1923
    iput-boolean p1, p0, Lcom/nuance/swype/connect/Connect;->isUsageCollectionEnabled:Z

    .line 1925
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/UserPreferences;->setStatisticsCollectionEnabled(Z)V

    .line 1926
    iput-boolean p1, p0, Lcom/nuance/swype/connect/Connect;->isStaticsCollectionEnabled:Z

    .line 1928
    if-nez p1, :cond_0

    .line 1930
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    .line 1931
    const-string/jumbo v2, "chinese_cloud_diabled"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/AppPreferences;->setChineseCloudNetworkOption(Ljava/lang/String;)V

    .line 1932
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/Connect;->getLivingLanguage(Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)Lcom/nuance/swype/connect/Connect$LivingLanguage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->disable()V

    .line 1933
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect$Sync;->disable()V

    .line 1936
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->updateReportingConfiguration()V

    .line 1939
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->queue:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1941
    return-void
.end method

.method public setCurrentLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 1
    .param p1, "l"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 1806
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/Connect;->setCurrentLanguage(Lcom/nuance/swype/input/InputMethods$Language;I)V

    .line 1807
    return-void
.end method

.method public setCurrentLanguage(Lcom/nuance/swype/input/InputMethods$Language;I)V
    .locals 11
    .param p1, "l"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "selectedFrom"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1810
    sget-object v4, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "setCurrentLanguage("

    aput-object v6, v5, v8

    iget-object v6, p1, Lcom/nuance/swype/input/InputMethods$Language;->mNativeLanguageName:Ljava/lang/String;

    aput-object v6, v5, v9

    const-string/jumbo v6, ","

    aput-object v6, v5, v10

    const/4 v6, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, ")"

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1811
    if-eqz p1, :cond_1

    .line 1812
    new-array v2, v9, [I

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v4

    aput v4, v2, v8

    .line 1814
    .local v2, "langId":[I
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/BilingualLanguage;->getLanguageIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1815
    .local v3, "possibleBilingualLangs":[Ljava/lang/String;
    array-length v4, v3

    if-ne v4, v10, :cond_0

    .line 1816
    const/4 v0, 0x0

    .line 1817
    .local v0, "lang1":I
    const/4 v1, 0x0

    .line 1819
    .local v1, "lang2":I
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, v3, v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 1820
    const/4 v4, 0x1

    aget-object v4, v3, v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1823
    :goto_0
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1824
    new-array v2, v10, [I

    .end local v2    # "langId":[I
    aput v0, v2, v8

    aput v1, v2, v9

    .line 1827
    .end local v0    # "lang1":I
    .end local v1    # "lang2":I
    .restart local v2    # "langId":[I
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectStarted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1828
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/nuance/swype/connect/Connect;->initialLanguage:[I

    .line 1829
    iget-object v4, p0, Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    invoke-virtual {v4, v2, p2}, Lcom/nuance/swypeconnect/ac/ACLanguage;->setActiveLanguages([II)V

    .line 1836
    .end local v2    # "langId":[I
    .end local v3    # "possibleBilingualLangs":[Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1831
    .restart local v2    # "langId":[I
    .restart local v3    # "possibleBilingualLangs":[Ljava/lang/String;
    :cond_2
    iput-object v2, p0, Lcom/nuance/swype/connect/Connect;->initialLanguage:[I

    goto :goto_1

    .restart local v0    # "lang1":I
    .restart local v1    # "lang2":I
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public setRunningState(I)V
    .locals 4
    .param p1, "runningState"    # I

    .prologue
    .line 1736
    sget-object v0, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "setRunningState state="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1738
    return-void
.end method

.method protected setupSupportedLanguages(Lcom/nuance/swypeconnect/ac/ACManager;)V
    .locals 4
    .param p1, "manager"    # Lcom/nuance/swypeconnect/ac/ACManager;

    .prologue
    .line 1446
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getDownloadManager()Lcom/nuance/swype/connect/SDKDownloadManager;

    .line 1447
    new-instance v0, Lcom/nuance/swype/connect/Connect$8;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/connect/Connect$8;-><init>(Lcom/nuance/swype/connect/Connect;Lcom/nuance/swypeconnect/ac/ACManager;)V

    .line 1715
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/nuance/swype/input/InputMethods;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1716
    return-void
.end method

.method public startCreatorThread()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 947
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->creatorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 948
    sget-object v0, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "startCreatorThread..."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 949
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->creatorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 951
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 891
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 893
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->connection:Lcom/nuance/swype/connect/ConnectedStatus;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->connection:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->unregister()V

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    if-eqz v0, :cond_1

    .line 898
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->acDLMSyncCallback:Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;->unregisterCallback(Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;)V

    .line 901
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->shutdown()V

    .line 902
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->created:Z

    .line 903
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->queue:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 906
    :cond_2
    return-void
.end method
