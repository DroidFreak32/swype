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

.field private static final CORE_VERSION:Ljava/lang/String; = "9.10"

.field private static final MESSAGE_POST_START:I = 0x65

.field private static final MESSAGE_START:I = 0x64

.field private static final NOTIFY_STATS_SETTING_CHANGED:I = 0x66

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static final trace:Lcom/nuance/swype/util/LogManager$Trace;


# instance fields
.field private volatile acManager:Lcom/nuance/swypeconnect/ac/ACManager;

.field private volatile accountService:Lcom/nuance/swypeconnect/ac/ACAccountService;

.field protected volatile cellularConnected:Z

.field private final chineseListCallback:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;

.field private volatile chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

.field private connectLegal:Lcom/nuance/swype/connect/ConnectLegal;

.field private connection:Lcom/nuance/swype/connect/ConnectedStatus;

.field private final context:Landroid/content/Context;

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

.field private volatile syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

.field private updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

.field protected volatile wifiConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-string v0, "Connect"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 84
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getTrace()Lcom/nuance/swype/util/LogManager$Trace;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/connect/Connect;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput v2, p0, Lcom/nuance/swype/connect/Connect;->maxConnectionsWifi:I

    .line 94
    iput v2, p0, Lcom/nuance/swype/connect/Connect;->maxConnectionsCellular:I

    .line 98
    iput-object v1, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    .line 101
    iput-object v1, p0, Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    .line 114
    iput-object v1, p0, Lcom/nuance/swype/connect/Connect;->initialLocale:Ljava/util/Locale;

    .line 115
    iput-object v1, p0, Lcom/nuance/swype/connect/Connect;->initialLanguage:[I

    .line 123
    iput-boolean v3, p0, Lcom/nuance/swype/connect/Connect;->wifiConnected:Z

    .line 124
    iput-boolean v3, p0, Lcom/nuance/swype/connect/Connect;->cellularConnected:Z

    .line 125
    iput-boolean v2, p0, Lcom/nuance/swype/connect/Connect;->isLicensed:Z

    .line 133
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/connect/Connect;->postStartEvents:Ljava/util/Queue;

    .line 135
    new-instance v1, Lcom/nuance/swype/connect/Connect$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/connect/Connect$1;-><init>(Lcom/nuance/swype/connect/Connect;)V

    iput-object v1, p0, Lcom/nuance/swype/connect/Connect;->handlerCallback:Landroid/os/Handler$Callback;

    .line 162
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v1}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/connect/Connect;->queue:Landroid/os/Handler;

    .line 170
    new-instance v1, Lcom/nuance/swype/connect/Connect$2;

    invoke-direct {v1, p0}, Lcom/nuance/swype/connect/Connect$2;-><init>(Lcom/nuance/swype/connect/Connect;)V

    iput-object v1, p0, Lcom/nuance/swype/connect/Connect;->chineseListCallback:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;

    .line 609
    iput-boolean v3, p0, Lcom/nuance/swype/connect/Connect;->created:Z

    .line 610
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/nuance/swype/connect/Connect;->creatorLatch:Ljava/util/concurrent/CountDownLatch;

    .line 611
    new-instance v1, Lcom/nuance/swype/connect/Connect$3;

    invoke-direct {v1, p0}, Lcom/nuance/swype/connect/Connect$3;-><init>(Lcom/nuance/swype/connect/Connect;)V

    iput-object v1, p0, Lcom/nuance/swype/connect/Connect;->creatorThread:Ljava/lang/Thread;

    .line 1020
    new-instance v1, Lcom/nuance/swype/connect/Connect$6;

    invoke-direct {v1, p0}, Lcom/nuance/swype/connect/Connect$6;-><init>(Lcom/nuance/swype/connect/Connect;)V

    iput-object v1, p0, Lcom/nuance/swype/connect/Connect;->livingLanguageCallback:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;

    .line 799
    sget-object v1, Lcom/nuance/swype/connect/Connect;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 800
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    .line 802
    invoke-static {p1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 803
    .local v0, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isStatisticsCollectionEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/connect/Connect;->isStaticsCollectionEnabled:Z

    .line 804
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isDataUsageOptAccepted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/connect/Connect;->isDataUsageOptInAccepted:Z

    .line 805
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isUsageCollectionEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/connect/Connect;->isUsageCollectionEnabled:Z

    .line 807
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->creatorThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 809
    sget-object v1, Lcom/nuance/swype/connect/Connect;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 810
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/connect/Connect;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/connect/Connect;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->postStartEvents:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->getAccountService()Lcom/nuance/swypeconnect/ac/ACAccountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->accountService:Lcom/nuance/swypeconnect/ac/ACAccountService;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nuance/swype/connect/Connect;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->registerDefaultSyncCallback()V

    return-void
.end method

.method static synthetic access$1300(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    return-object v0
.end method

.method static synthetic access$1400()Lcom/nuance/swype/util/LogManager$Trace;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/nuance/swype/connect/Connect;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/nuance/swype/connect/Connect;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->migrateInternalAccountData()V

    return-void
.end method

.method static synthetic access$1600(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLanguage;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/nuance/swype/connect/Connect;Lcom/nuance/swypeconnect/ac/ACLanguage;)Lcom/nuance/swypeconnect/ac/ACLanguage;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;
    .param p1, "x1"    # Lcom/nuance/swypeconnect/ac/ACLanguage;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/nuance/swype/connect/Connect;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->imeIdle:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/nuance/swype/connect/Connect;)Ljava/util/Locale;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->initialLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/nuance/swype/connect/Connect;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;
    .param p1, "x1"    # Ljava/util/Locale;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect;->initialLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/nuance/swype/connect/Connect;)[I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->initialLanguage:[I

    return-object v0
.end method

.method static synthetic access$1902(Lcom/nuance/swype/connect/Connect;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;
    .param p1, "x1"    # [I

    .prologue
    .line 79
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect;->initialLanguage:[I

    return-object p1
.end method

.method static synthetic access$200(Lcom/nuance/swype/connect/Connect;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->queue:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/nuance/swype/connect/Connect;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->creatorLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/nuance/swype/connect/Connect;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/nuance/swype/connect/Connect;->isLicensed:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/nuance/swype/connect/Connect;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->postTosTasks()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->livingLanguageService:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACManager;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/nuance/swype/connect/Connect;Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/swypeconnect/ac/ACManager;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;
    .param p1, "x1"    # Lcom/nuance/swypeconnect/ac/ACManager;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    return-object p1
.end method

.method static synthetic access$700(Lcom/nuance/swype/connect/Connect;Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;
    .param p1, "x1"    # Lcom/nuance/swypeconnect/ac/ACManager;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/Connect;->getLivingLanguageService(Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/swype/connect/Connect;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->notificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/nuance/swype/connect/Connect;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;
    .param p1, "x1"    # Landroid/app/NotificationManager;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect;->notificationManager:Landroid/app/NotificationManager;

    return-object p1
.end method

.method static synthetic access$900(Lcom/nuance/swype/connect/Connect;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->unregisterDefaultSyncCallback()V

    return-void
.end method

.method private determineAccountAlarm()V
    .locals 8

    .prologue
    .line 1111
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    .line 1113
    .local v2, "prefs":Lcom/nuance/swype/input/AppPreferences;
    invoke-virtual {v2}, Lcom/nuance/swype/input/AppPreferences;->getAccountNotificationPending()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1114
    invoke-virtual {v2}, Lcom/nuance/swype/input/AppPreferences;->getAccountNotificationShowAt()J

    move-result-wide v4

    .line 1116
    .local v4, "time":J
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1117
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1118
    .local v0, "cal":Ljava/util/Calendar;
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    .line 1119
    .local v1, "info":Lcom/nuance/swype/input/BuildInfo;
    const/4 v3, 0x5

    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->getAccountNotificationInDays()I

    move-result v6

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->add(II)V

    .line 1121
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1122
    invoke-virtual {v2, v4, v5}, Lcom/nuance/swype/input/AppPreferences;->setAccountNotificationShowAt(J)V

    .line 1125
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "info":Lcom/nuance/swype/input/BuildInfo;
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 1126
    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->getAccountAlarmIntent()Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v3, v6, v4, v5, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1128
    .end local v4    # "time":J
    :cond_1
    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 818
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    return-object v0
.end method

.method private getAccountAlarmIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 1139
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    const-class v2, Lcom/nuance/swype/connect/AccountCreationBroadcastReciever;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1140
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.example.android.receivers.NOTIFICATION_ALARM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1141
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    const v2, 0x2f145

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1142
    return-object v1
.end method

.method private getAccountService()Lcom/nuance/swypeconnect/ac/ACAccountService;
    .locals 4

    .prologue
    .line 1090
    sget-object v1, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "getAccountService() "

    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->accountService:Lcom/nuance/swypeconnect/ac/ACAccountService;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1091
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->accountService:Lcom/nuance/swypeconnect/ac/ACAccountService;

    if-eqz v1, :cond_0

    .line 1092
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->accountService:Lcom/nuance/swypeconnect/ac/ACAccountService;

    .line 1107
    :goto_0
    return-object v1

    .line 1094
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1095
    sget-object v1, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "Connect not available"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 1096
    const/4 v1, 0x0

    goto :goto_0

    .line 1100
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v1

    const-string v2, "ACCOUNT"

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACAccountService;

    iput-object v1, p0, Lcom/nuance/swype/connect/Connect;->accountService:Lcom/nuance/swypeconnect/ac/ACAccountService;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->accountService:Lcom/nuance/swypeconnect/ac/ACAccountService;

    goto :goto_0

    .line 1102
    :catch_0
    move-exception v0

    .line 1103
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getReasonCode()I

    move-result v1

    const/16 v2, 0x68

    if-eq v1, v2, :cond_2

    .line 1104
    sget-object v1, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error getting account service: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private getDlmSyncService()Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1156
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    if-eqz v2, :cond_0

    .line 1157
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    .line 1177
    :goto_0
    return-object v2

    .line 1159
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectLegal;->isOptInAccepted()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 1161
    .local v1, "legalAccepted":Z
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1162
    sget-object v2, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "Connect not available"

    invoke-virtual {v2, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    move-object v2, v3

    .line 1163
    goto :goto_0

    .line 1159
    .end local v1    # "legalAccepted":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1166
    .restart local v1    # "legalAccepted":Z
    :cond_2
    if-nez v1, :cond_3

    .line 1167
    sget-object v2, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "legal is not accepted."

    invoke-virtual {v2, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    move-object v2, v3

    .line 1168
    goto :goto_0

    .line 1172
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v4, "DLM_SYNC_SERVICE"

    invoke-virtual {v2, v4}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v2

    check-cast v2, Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    iput-object v2, p0, Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    .line 1173
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->syncService:Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1174
    :catch_0
    move-exception v0

    .line 1175
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    sget-object v2, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSyncService() "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    move-object v2, v3

    .line 1177
    goto :goto_0
.end method

.method private getLivingLanguageService(Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;
    .locals 4
    .param p1, "manager"    # Lcom/nuance/swypeconnect/ac/ACManager;

    .prologue
    .line 1058
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->livingLanguageService:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    if-eqz v1, :cond_0

    .line 1059
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->livingLanguageService:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    .line 1078
    :goto_0
    return-object v1

    .line 1062
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectStarted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1063
    :cond_1
    sget-object v1, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "Connect not available"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 1064
    const/4 v1, 0x0

    goto :goto_0

    .line 1068
    :cond_2
    :try_start_0
    const-string v1, "LIVING_LANGUAGE"

    invoke-virtual {p1, v1}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    iput-object v1, p0, Lcom/nuance/swype/connect/Connect;->livingLanguageService:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    .line 1069
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->livingLanguageService:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    if-eqz v1, :cond_3

    .line 1070
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->livingLanguageService:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->livingLanguageCallback:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1078
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->livingLanguageService:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    goto :goto_0

    .line 1072
    :catch_0
    move-exception v0

    .line 1073
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getReasonCode()I

    move-result v1

    const/16 v2, 0x68

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getReasonCode()I

    move-result v1

    const/16 v2, 0x7e

    if-eq v1, v2, :cond_3

    .line 1075
    sget-object v1, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error getting living language service: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private isLicenseFileValid()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 933
    sget-object v0, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "isLicenseFileValid()"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 934
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->licenseFileValid:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 935
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/License;->getLicense(Landroid/content/Context;)Lcom/nuance/swype/input/License;

    move-result-object v2

    .line 936
    .local v2, "currentLicense":Lcom/nuance/swype/input/License;
    sget-object v0, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "currentLicense "

    const-string v3, " currentLicense.isValid(context) "

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/License;->isValid(Landroid/content/Context;)Z

    move-result v4

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, " currentLicense.isDisabled() "

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/nuance/swype/input/License;->isDisabled()Z

    move-result v6

    :cond_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 939
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/License;->isValid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/nuance/swype/input/License;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 940
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/nuance/swype/connect/Connect;->licenseFileValid:Ljava/lang/Boolean;

    .line 945
    .end local v2    # "currentLicense":Lcom/nuance/swype/input/License;
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->licenseFileValid:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .restart local v2    # "currentLicense":Lcom/nuance/swype/input/License;
    :cond_3
    move v4, v6

    .line 936
    goto :goto_0

    .line 942
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/nuance/swype/connect/Connect;->licenseFileValid:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method private migrateChineseDictionaryData()V
    .locals 15

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v14

    .line 1677
    .local v14, "prefs":Lcom/nuance/swype/input/AppPreferences;
    sget-object v0, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "migrateChineseDictionaryData() upgrade: "

    invoke-virtual {v14}, Lcom/nuance/swype/input/AppPreferences;->getUpgradeConnect()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1678
    invoke-virtual {v14}, Lcom/nuance/swype/input/AppPreferences;->getUpgradeConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1679
    sget-object v0, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "Removing old Chinese DBs"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1680
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v12

    .line 1681
    .local v12, "im":Lcom/nuance/swype/input/InputMethods;
    new-instance v8, Lcom/nuance/swype/input/CategoryDBList;

    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/nuance/swype/input/CategoryDBList;-><init>(Landroid/content/Context;)V

    .line 1682
    .local v8, "cdbList":Lcom/nuance/swype/input/CategoryDBList;
    invoke-virtual {v8}, Lcom/nuance/swype/input/CategoryDBList;->getAvailableCatDbList()Ljava/util/Map;

    move-result-object v0

    .line 1683
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1684
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v12, v0}, Lcom/nuance/swype/input/InputMethods;->findLanguageFromName(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v13

    .line 1685
    .local v13, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1686
    .local v7, "catInfo":Ljava/lang/String;
    sget-object v0, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "Removing... File="

    invoke-virtual {v8, v7}, Lcom/nuance/swype/input/CategoryDBList;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ", Id="

    invoke-virtual {v8, v7}, Lcom/nuance/swype/input/CategoryDBList;->getFileId(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ", Lang="

    iget v6, v13, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1689
    invoke-virtual {v8, v7}, Lcom/nuance/swype/input/CategoryDBList;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v7}, Lcom/nuance/swype/input/CategoryDBList;->getFileId(Ljava/lang/String;)I

    move-result v1

    iget v2, v13, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-virtual {v8, v0, v1, v2}, Lcom/nuance/swype/input/CategoryDBList;->uninstallDownloadedCategoryDB(Ljava/lang/String;II)Z

    goto :goto_0

    .line 1696
    .end local v7    # "catInfo":Ljava/lang/String;
    .end local v8    # "cdbList":Lcom/nuance/swype/input/CategoryDBList;
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "im":Lcom/nuance/swype/input/InputMethods;
    .end local v13    # "lang":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_1
    return-void
.end method

.method private migrateInternalAccountData()V
    .locals 10

    .prologue
    .line 1643
    iget-object v7, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v5

    .line 1644
    .local v5, "prefs":Lcom/nuance/swype/input/AppPreferences;
    sget-object v7, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v8, "migrateInternalAccountData() upgrade: "

    invoke-virtual {v5}, Lcom/nuance/swype/input/AppPreferences;->getUpgradeConnect()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1645
    invoke-virtual {v5}, Lcom/nuance/swype/input/AppPreferences;->getUpgradeConnect()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1647
    iget-object v7, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    const-string v8, "com.nuance.swype.connect.store.FilePreference"

    invoke-static {v7, v8}, Lcom/nuance/connect/store/DataStoreFactory;->getDataStore(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v6

    .line 1648
    .local v6, "store":Lcom/nuance/connect/store/PersistentDataStore;
    const-string v7, "account_ACCOUNT"

    invoke-interface {v6, v7}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1649
    sget-object v7, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v8, "Found old data format, converting to JSON"

    invoke-virtual {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1651
    :try_start_0
    const-string v7, "account_ACCOUNT"

    invoke-interface {v6, v7}, Lcom/nuance/connect/store/PersistentDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1653
    .local v0, "accounts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/nuance/swype/connect/api/ConnectAccount;>;"
    const/4 v2, 0x0

    .line 1654
    .local v2, "activeAccount":Lcom/nuance/swype/connect/api/ConnectAccount;
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1655
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/api/ConnectAccount;

    .line 1656
    .local v1, "acct":Lcom/nuance/swype/connect/api/ConnectAccount;
    invoke-virtual {v1}, Lcom/nuance/swype/connect/api/ConnectAccount;->getAccountState()Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    move-result-object v7

    sget-object v8, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    invoke-virtual {v7, v8}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/api/ConnectAccount;->getAccountState()Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    move-result-object v7

    sget-object v8, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    invoke-virtual {v7, v8}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1658
    :cond_1
    move-object v2, v1

    .line 1662
    .end local v1    # "acct":Lcom/nuance/swype/connect/api/ConnectAccount;
    :cond_2
    if-eqz v2, :cond_3

    .line 1663
    const-string v7, "account_ACTIVE_ACCOUNT"

    invoke-virtual {v2}, Lcom/nuance/swype/connect/api/ConnectAccount;->toJsonString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1668
    .end local v0    # "accounts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/nuance/swype/connect/api/ConnectAccount;>;"
    .end local v2    # "activeAccount":Lcom/nuance/swype/connect/api/ConnectAccount;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    const-string v7, "account_ACCOUNT"

    invoke-interface {v6, v7}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    .line 1671
    .end local v6    # "store":Lcom/nuance/connect/store/PersistentDataStore;
    :cond_4
    return-void

    .line 1665
    .restart local v6    # "store":Lcom/nuance/connect/store/PersistentDataStore;
    :catch_0
    move-exception v3

    .line 1666
    .local v3, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v8, "Unable to convert old account data."

    invoke-virtual {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private postTosTasks()V
    .locals 1

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/Connect;->setupACListeners(Lcom/nuance/swypeconnect/ac/ACManager;)V

    .line 924
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/Connect;->setupSupportedLanguages(Lcom/nuance/swypeconnect/ac/ACManager;)V

    .line 925
    return-void
.end method

.method private declared-synchronized registerDefaultSyncCallback()V
    .locals 2

    .prologue
    .line 509
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->defaultSyncCallback:Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;

    if-nez v0, :cond_0

    .line 510
    new-instance v0, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;-><init>(Lcom/nuance/swype/connect/Connect;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/Connect;->defaultSyncCallback:Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;

    .line 511
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->defaultSyncCallback:Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/Connect$Accounts;->registerCallback(Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    :cond_0
    monitor-exit p0

    return-void

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setupACListeners(Lcom/nuance/swypeconnect/ac/ACManager;)V
    .locals 3
    .param p1, "manager"    # Lcom/nuance/swypeconnect/ac/ACManager;

    .prologue
    .line 1191
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/Connect;->getLivingLanguageService(Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->livingLanguageService:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->livingLanguageCallback:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;)V

    .line 1196
    :cond_0
    :try_start_0
    const-string v0, "CHINESE_DICTIONARY_SERVICE"

    invoke-virtual {p1, v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iput-object v0, p0, Lcom/nuance/swype/connect/Connect;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    .line 1199
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->chineseListCallback:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;Z)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1203
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 1202
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private start()V
    .locals 11

    .prologue
    const/16 v10, 0x64

    .line 673
    iget-object v6, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    .line 674
    .local v5, "prefs":Lcom/nuance/swype/input/UserPreferences;
    const/4 v4, 0x1

    .line 676
    .local v4, "isEnableConnectForNetworkAccess":Z
    iget-object v6, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/nuance/swype/input/UserPreferences;->getNetworkAgreement()Z

    move-result v6

    if-nez v6, :cond_0

    .line 678
    const/4 v4, 0x0

    .line 680
    :cond_0
    if-nez v4, :cond_1

    .line 776
    :goto_0
    return-void

    .line 683
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->isLicenseFileValid()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->isLVLLicenseValid()Z

    move-result v6

    if-nez v6, :cond_3

    .line 684
    :cond_2
    sget-object v6, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v7, "license file is not valid; disabling sdk service"

    invoke-virtual {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 687
    :cond_3
    iget-object v6, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v3

    .line 688
    .local v3, "info":Lcom/nuance/swype/input/BuildInfo;
    iget-object v6, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 689
    .local v0, "appPref":Lcom/nuance/swype/input/AppPreferences;
    iget-object v6, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    .line 691
    .local v2, "ime":Lcom/nuance/swype/input/IME;
    invoke-virtual {v3}, Lcom/nuance/swype/input/BuildInfo;->isDTCbuild()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->isStartupTipAlreadyShown()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v6

    if-nez v6, :cond_5

    .line 693
    :cond_4
    iget-object v6, p0, Lcom/nuance/swype/connect/Connect;->queue:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 694
    iget-object v6, p0, Lcom/nuance/swype/connect/Connect;->queue:Landroid/os/Handler;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 697
    :cond_5
    sget-object v6, Lcom/nuance/swype/connect/Connect;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 698
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->migrateChineseDictionaryData()V

    .line 700
    invoke-virtual {v3}, Lcom/nuance/swype/input/BuildInfo;->getMaxConnectionsCellular()I

    move-result v6

    iput v6, p0, Lcom/nuance/swype/connect/Connect;->maxConnectionsCellular:I

    .line 701
    invoke-virtual {v3}, Lcom/nuance/swype/input/BuildInfo;->getMaxConnectionsWifi()I

    move-result v6

    iput v6, p0, Lcom/nuance/swype/connect/Connect;->maxConnectionsWifi:I

    .line 702
    iget-object v6, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v6}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectStarted()Z

    move-result v6

    if-nez v6, :cond_8

    .line 704
    :try_start_0
    sget-object v6, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v7, "acManager.start()"

    invoke-virtual {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 705
    iget-object v6, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v6}, Lcom/nuance/swypeconnect/ac/ACManager;->start()V

    .line 707
    invoke-virtual {v3}, Lcom/nuance/swype/input/BuildInfo;->isDTCbuild()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/ConnectLegal;->isEulaAccepted()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 708
    :cond_6
    iget-object v6, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-direct {p0, v6}, Lcom/nuance/swype/connect/Connect;->setupACListeners(Lcom/nuance/swypeconnect/ac/ACManager;)V

    .line 709
    iget-object v6, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {p0, v6}, Lcom/nuance/swype/connect/Connect;->setupSupportedLanguages(Lcom/nuance/swypeconnect/ac/ACManager;)V

    .line 711
    :cond_7
    new-instance v6, Lcom/nuance/swype/connect/Connect$4;

    iget-object v7, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-direct {v6, p0, v7}, Lcom/nuance/swype/connect/Connect$4;-><init>(Lcom/nuance/swype/connect/Connect;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/nuance/swype/connect/Connect;->connection:Lcom/nuance/swype/connect/ConnectedStatus;

    .line 760
    iget-object v6, p0, Lcom/nuance/swype/connect/Connect;->connection:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v6}, Lcom/nuance/swype/connect/ConnectedStatus;->register()V

    .line 761
    iget-object v6, p0, Lcom/nuance/swype/connect/Connect;->connection:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v6}, Lcom/nuance/swype/connect/ConnectedStatus;->isInitialized()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 762
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->doUpgrade()V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    :cond_8
    :goto_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/nuance/swype/connect/Connect;->created:Z

    .line 770
    iget-object v6, p0, Lcom/nuance/swype/connect/Connect;->queue:Landroid/os/Handler;

    const/16 v7, 0x65

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 774
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->determineAccountAlarm()V

    .line 775
    sget-object v6, Lcom/nuance/swype/connect/Connect;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    goto/16 :goto_0

    .line 764
    :catch_0
    move-exception v1

    .line 765
    .local v1, "e":Lcom/nuance/swypeconnect/ac/ACException;
    sget-object v6, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to start service: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private declared-synchronized unregisterDefaultSyncCallback()V
    .locals 2

    .prologue
    .line 516
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->defaultSyncCallback:Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->defaultSyncCallback:Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/Connect$Accounts;->unregisterCallback(Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;)V

    .line 518
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/connect/Connect;->defaultSyncCallback:Lcom/nuance/swype/connect/Connect$DefaultSyncCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    :cond_0
    monitor-exit p0

    return-void

    .line 516
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public clearPostStartEvents()V
    .locals 2

    .prologue
    .line 860
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->queue:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 861
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->postStartEvents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 862
    return-void
.end method

.method public dismissAccountAlarm()V
    .locals 2

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 1132
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setAccountNotificationPending(Z)V

    .line 1134
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1135
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->getAccountAlarmIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1136
    return-void
.end method

.method public doDelayedStart()V
    .locals 1

    .prologue
    .line 1750
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1751
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->start()V

    .line 1753
    :cond_0
    return-void
.end method

.method public doPostStart(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 852
    iget-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->created:Z

    if-eqz v0, :cond_0

    .line 853
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 857
    :goto_0
    return-void

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->postStartEvents:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public doUpgrade()V
    .locals 5

    .prologue
    .line 1604
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    .line 1605
    .local v1, "prefs":Lcom/nuance/swype/input/AppPreferences;
    sget-object v2, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "doUpgrade() isUpgrade: "

    invoke-virtual {v1}, Lcom/nuance/swype/input/AppPreferences;->getUpgradeConnect()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1606
    invoke-virtual {v1}, Lcom/nuance/swype/input/AppPreferences;->getUpgradeConnect()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1607
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v0

    .line 1609
    .local v0, "legal":Lcom/nuance/swype/connect/ConnectLegal;
    invoke-virtual {v1}, Lcom/nuance/swype/input/AppPreferences;->isLegacyTosAccepted()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1610
    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->getTos()Ljava/lang/String;

    .line 1612
    :try_start_0
    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->acceptTos()V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1616
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/nuance/swype/input/AppPreferences;->removeLegacyTosAccepted()V

    .line 1617
    invoke-virtual {v1}, Lcom/nuance/swype/input/AppPreferences;->isEulaAccepted()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->isEulaAccepted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1618
    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->getEula()Ljava/lang/String;

    .line 1620
    :try_start_1
    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->acceptEula()V
    :try_end_1
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1624
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->isDataUsageOptAccepted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1625
    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->getOptIn()Ljava/lang/String;

    .line 1627
    :try_start_2
    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->acceptOptIn()V
    :try_end_2
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1631
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->isConnectLivingLanguageAllowed_Deprecated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1632
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/nuance/swype/connect/Connect;->getLivingLanguage(Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)Lcom/nuance/swype/connect/Connect$LivingLanguage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->enable()V

    .line 1634
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->removeConnectLivingLanguageAllowed_Deprecated()V

    .line 1635
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getDictionaryDownloadManager()Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->upgrade()V

    .line 1636
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect$Sync;->upgrade()V

    .line 1637
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getUpdates()Lcom/nuance/swype/connect/SDKUpdateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKUpdateManager;->upgrade()V

    .line 1638
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/AppPreferences;->setUpgradeConnect(Z)V

    .line 1640
    .end local v0    # "legal":Lcom/nuance/swype/connect/ConnectLegal;
    :cond_4
    return-void

    .restart local v0    # "legal":Lcom/nuance/swype/connect/ConnectLegal;
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_2
.end method

.method public enableCellularData(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    .line 910
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConfiguration()Lcom/nuance/swypeconnect/ac/ACConfiguration;

    move-result-object v6

    .line 913
    .local v6, "config":Lcom/nuance/swypeconnect/ac/ACConfiguration;
    :try_start_0
    sget-object v0, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "backgroundData(true,"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ", enabled)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 914
    const/4 v0, 0x1

    invoke-virtual {v6, v0, p1, p1}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->backgroundData(ZZZ)V

    .line 915
    const/4 v0, 0x1

    invoke-virtual {v6, v0, p1, p1}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->foregroundData(ZZZ)V

    .line 916
    sget-object v0, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "foregroundData(true,"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ", "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    .end local v6    # "config":Lcom/nuance/swypeconnect/ac/ACConfiguration;
    :cond_0
    :goto_0
    return-void

    .restart local v6    # "config":Lcom/nuance/swypeconnect/ac/ACConfiguration;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;
    .locals 1

    .prologue
    .line 1146
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->getAccountService()Lcom/nuance/swypeconnect/ac/ACAccountService;

    .line 1147
    new-instance v0, Lcom/nuance/swype/connect/Connect$Accounts;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/Connect$Accounts;-><init>(Lcom/nuance/swype/connect/Connect;)V

    return-object v0
.end method

.method public getChineseDictionaryDownloadService()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    .locals 5

    .prologue
    .line 969
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    if-eqz v2, :cond_0

    .line 970
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    .line 987
    :goto_0
    return-object v2

    .line 972
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 973
    sget-object v2, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "Connect not available"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    .line 974
    const/4 v2, 0x0

    goto :goto_0

    .line 977
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v1

    .line 978
    .local v1, "manager":Lcom/nuance/swypeconnect/ac/ACManager;
    const-string v2, "CHINESE_DICTIONARY_SERVICE"

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v2

    check-cast v2, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iput-object v2, p0, Lcom/nuance/swype/connect/Connect;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    .line 981
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->chineseListCallback:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;

    iget-object v4, p0, Lcom/nuance/swype/connect/Connect;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isDictionaryListAvailable()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;Z)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    .end local v1    # "manager":Lcom/nuance/swypeconnect/ac/ACManager;
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    goto :goto_0

    .line 984
    :catch_0
    move-exception v0

    .line 985
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    sget-object v2, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error getting the chinese dictionary download service: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDLMConnector()Lcom/nuance/swypeconnect/ac/ACDLMConnector;
    .locals 5

    .prologue
    .line 953
    const/4 v0, 0x0

    .line 955
    .local v0, "dlmConnector":Lcom/nuance/swypeconnect/ac/ACDLMConnector;
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getDLMConnector()Lcom/nuance/swypeconnect/ac/ACDLMConnector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 961
    :goto_0
    return-object v0

    .line 956
    :catch_0
    move-exception v1

    .line 957
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getDLMConnector error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 958
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1768
    iget-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->created:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1770
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v1, "DEVICE"

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACDeviceService;

    .line 1771
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDeviceService;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1776
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 1774
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getDictionaryDownloadManager()Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;
    .locals 3

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->dictionaryDownloadManager:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    if-nez v0, :cond_0

    .line 1520
    new-instance v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;-><init>(Landroid/content/Context;Lcom/nuance/swypeconnect/ac/ACManager;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/Connect;->dictionaryDownloadManager:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    .line 1522
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->dictionaryDownloadManager:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    return-object v0
.end method

.method public declared-synchronized getDownloadManager()Lcom/nuance/swype/connect/SDKDownloadManager;
    .locals 3

    .prologue
    .line 1509
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/nuance/swype/connect/Connect;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 1510
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    if-nez v0, :cond_0

    .line 1511
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager;

    iget-object v1, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;-><init>(Landroid/content/Context;Lcom/nuance/swypeconnect/ac/ACManager;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/Connect;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    .line 1513
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->init()Z

    .line 1514
    sget-object v0, Lcom/nuance/swype/connect/Connect;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 1515
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1509
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLegal()Lcom/nuance/swype/connect/ConnectLegal;
    .locals 2

    .prologue
    .line 881
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->connectLegal:Lcom/nuance/swype/connect/ConnectLegal;

    if-nez v0, :cond_0

    .line 882
    new-instance v0, Lcom/nuance/swype/connect/ConnectLegal;

    new-instance v1, Lcom/nuance/swype/connect/Connect$5;

    invoke-direct {v1, p0}, Lcom/nuance/swype/connect/Connect$5;-><init>(Lcom/nuance/swype/connect/Connect;)V

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/connect/ConnectLegal;-><init>(Lcom/nuance/swype/connect/Connect;Lcom/nuance/swype/connect/ConnectLegal$DocumentAcceptedCallback;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/Connect;->connectLegal:Lcom/nuance/swype/connect/ConnectLegal;

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->connectLegal:Lcom/nuance/swype/connect/ConnectLegal;

    return-object v0
.end method

.method public getLivingLanguage(Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)Lcom/nuance/swype/connect/Connect$LivingLanguage;
    .locals 1
    .param p1, "presenter"    # Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    .prologue
    .line 1082
    new-instance v0, Lcom/nuance/swype/connect/Connect$LivingLanguage;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/connect/Connect$LivingLanguage;-><init>(Lcom/nuance/swype/connect/Connect;Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)V

    return-object v0
.end method

.method public getOemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    if-eqz v0, :cond_0

    .line 1789
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getBuildInfo()Lcom/nuance/swypeconnect/ac/ACBuildInfo;

    move-result-object v0

    .line 1790
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACBuildInfo;->getOemId()Ljava/lang/String;

    move-result-object v0

    .line 1792
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getReportingService()Lcom/nuance/swypeconnect/ac/ACReportingService;
    .locals 6

    .prologue
    .line 991
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->reportingService:Lcom/nuance/swypeconnect/ac/ACReportingService;

    if-eqz v3, :cond_0

    .line 992
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->reportingService:Lcom/nuance/swypeconnect/ac/ACReportingService;

    .line 1012
    :goto_0
    return-object v3

    .line 994
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v1

    .line 995
    .local v1, "legal":Lcom/nuance/swype/connect/ConnectLegal;
    iget-boolean v3, p0, Lcom/nuance/swype/connect/Connect;->created:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectLegal;->isOptInAccepted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 997
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1000
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v2

    .line 1001
    .local v2, "manager":Lcom/nuance/swypeconnect/ac/ACManager;
    const-string v3, "REPORTING_SERVICE"

    invoke-virtual {v2, v3}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v3

    check-cast v3, Lcom/nuance/swypeconnect/ac/ACReportingService;

    iput-object v3, p0, Lcom/nuance/swype/connect/Connect;->reportingService:Lcom/nuance/swypeconnect/ac/ACReportingService;

    .line 1002
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->reportingService:Lcom/nuance/swypeconnect/ac/ACReportingService;

    if-eqz v3, :cond_3

    .line 1003
    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectLegal;->isOptInAccepted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1004
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->reportingService:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACReportingService;->enableReporting()V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    .end local v2    # "manager":Lcom/nuance/swypeconnect/ac/ACManager;
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->reportingService:Lcom/nuance/swypeconnect/ac/ACReportingService;

    goto :goto_0

    .line 1006
    .restart local v2    # "manager":Lcom/nuance/swypeconnect/ac/ACManager;
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->reportingService:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACReportingService;->disableReporting()V
    :try_end_1
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1009
    .end local v2    # "manager":Lcom/nuance/swypeconnect/ac/ACManager;
    :catch_0
    move-exception v0

    .line 1010
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    sget-object v3, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error getting the reporting service: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;
    .locals 2

    .prologue
    .line 834
    iget-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->created:Z

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    .line 844
    :goto_0
    return-object v0

    .line 838
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->creatorLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    :goto_1
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->queue:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 843
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->start()V

    .line 844
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getSwyperId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1756
    iget-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->created:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1758
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v1, "DEVICE"

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACDeviceService;

    .line 1759
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDeviceService;->getSwyperId()Ljava/lang/String;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1764
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 1762
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getSync()Lcom/nuance/swype/connect/Connect$Sync;
    .locals 1

    .prologue
    .line 1181
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect;->getDlmSyncService()Lcom/nuance/swypeconnect/ac/ACDLMSyncService;

    .line 1182
    new-instance v0, Lcom/nuance/swype/connect/Connect$Sync;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/Connect$Sync;-><init>(Lcom/nuance/swype/connect/Connect;)V

    return-object v0
.end method

.method public getUpdates()Lcom/nuance/swype/connect/SDKUpdateManager;
    .locals 1

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    if-nez v0, :cond_0

    .line 1489
    new-instance v0, Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/SDKUpdateManager;-><init>(Lcom/nuance/swype/connect/Connect;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/Connect;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    .line 1491
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    if-eqz v0, :cond_0

    .line 1781
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getBuildInfo()Lcom/nuance/swypeconnect/ac/ACBuildInfo;

    move-result-object v0

    .line 1782
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACBuildInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 1784
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public isCreated()Z
    .locals 1

    .prologue
    .line 869
    iget-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->created:Z

    return v0
.end method

.method public isDataUsageOptInAccepted()Z
    .locals 1

    .prologue
    .line 1734
    iget-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->isDataUsageOptInAccepted:Z

    return v0
.end method

.method public isForegroundCellularConnected()Z
    .locals 1

    .prologue
    .line 877
    iget-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->cellularConnected:Z

    return v0
.end method

.method public isForegroundWifiConnected()Z
    .locals 1

    .prologue
    .line 873
    iget-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->wifiConnected:Z

    return v0
.end method

.method public isLicensed()Z
    .locals 1

    .prologue
    .line 1746
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
    .line 865
    iget-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->created:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectStarted()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStatisticsCollectionEnabled()Z
    .locals 1

    .prologue
    .line 1738
    iget-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->isStaticsCollectionEnabled:Z

    return v0
.end method

.method public isUsageCollectionEnabled()Z
    .locals 1

    .prologue
    .line 1742
    iget-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->isUsageCollectionEnabled:Z

    return v0
.end method

.method public onFinishInput(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "enterKeySelected"    # Z

    .prologue
    .line 1552
    sget-object v0, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "onFinishInput language="

    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    const-string v3, ", buffer="

    const-string v5, " enterKeySelected="

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1553
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    if-eqz v0, :cond_0

    .line 1554
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    new-instance v1, Lcom/nuance/swype/connect/Connect$SessionState;

    invoke-direct {v1, p2}, Lcom/nuance/swype/connect/Connect$SessionState;-><init>(Z)V

    invoke-virtual {v0, p1, v1}, Lcom/nuance/swypeconnect/ac/ACLanguage;->onFinishInput(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguage$InputSessionState;)V

    .line 1559
    :goto_0
    return-void

    .line 1557
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->imeIdle:Z

    goto :goto_0
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 3
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 1542
    sget-object v0, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "onStartInput language="

    iget-object v2, p0, Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1543
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    if-eqz v0, :cond_0

    .line 1544
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACLanguage;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1549
    :goto_0
    return-void

    .line 1547
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->imeIdle:Z

    goto :goto_0
.end method

.method public removeInvalidatedLanguage(I)V
    .locals 1
    .param p1, "languageId"    # I

    .prologue
    .line 1796
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getDownloadManager()Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/SDKDownloadManager;->removeLanguageFromList(I)V

    .line 1800
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/Connect;->setupSupportedLanguages(Lcom/nuance/swypeconnect/ac/ACManager;)V

    .line 1801
    return-void
.end method

.method public setActiveLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "currentLocale"    # Ljava/util/Locale;

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    if-nez v0, :cond_0

    .line 1596
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect;->initialLocale:Ljava/util/Locale;

    .line 1601
    :goto_0
    return-void

    .line 1598
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/connect/Connect;->initialLocale:Ljava/util/Locale;

    .line 1599
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguage;->setActiveLocale(Ljava/util/Locale;)V

    goto :goto_0
.end method

.method public setCurrentLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 1
    .param p1, "l"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 1562
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/Connect;->setCurrentLanguage(Lcom/nuance/swype/input/InputMethods$Language;I)V

    .line 1563
    return-void
.end method

.method public setCurrentLanguage(Lcom/nuance/swype/input/InputMethods$Language;I)V
    .locals 13
    .param p1, "l"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "selectedFrom"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1566
    sget-object v0, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "setCurrentLanguage("

    iget-object v2, p1, Lcom/nuance/swype/input/InputMethods$Language;->mNativeLanguageName:Ljava/lang/String;

    const-string v3, ","

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1567
    if-eqz p1, :cond_1

    .line 1568
    new-array v8, v11, [I

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v0

    aput v0, v8, v10

    .line 1570
    .local v8, "langId":[I
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/BilingualLanguage;->getLanguageIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1571
    .local v9, "possibleBilingualLangs":[Ljava/lang/String;
    array-length v0, v9

    if-ne v0, v12, :cond_0

    .line 1572
    const/4 v6, 0x0

    .line 1573
    .local v6, "lang1":I
    const/4 v7, 0x0

    .line 1575
    .local v7, "lang2":I
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, v9, v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 1576
    const/4 v0, 0x1

    aget-object v0, v9, v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 1579
    :goto_0
    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    .line 1580
    new-array v8, v12, [I

    .end local v8    # "langId":[I
    aput v6, v8, v10

    aput v7, v8, v11

    .line 1583
    .end local v6    # "lang1":I
    .end local v7    # "lang2":I
    .restart local v8    # "langId":[I
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    if-eqz v0, :cond_2

    .line 1584
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/connect/Connect;->initialLanguage:[I

    .line 1585
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    invoke-virtual {v0, v8, p2}, Lcom/nuance/swypeconnect/ac/ACLanguage;->setActiveLanguages([II)V

    .line 1592
    .end local v8    # "langId":[I
    .end local v9    # "possibleBilingualLangs":[Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1587
    .restart local v8    # "langId":[I
    .restart local v9    # "possibleBilingualLangs":[Ljava/lang/String;
    :cond_2
    iput-object v8, p0, Lcom/nuance/swype/connect/Connect;->initialLanguage:[I

    goto :goto_1

    .restart local v6    # "lang1":I
    .restart local v7    # "lang2":I
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDataUsageOptInStatus(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1721
    iput-boolean p1, p0, Lcom/nuance/swype/connect/Connect;->isDataUsageOptInAccepted:Z

    .line 1722
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 1723
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/UserPreferences;->setDataUsageOptStatus(Z)V

    .line 1727
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/Connect;->setStatisticsCollectionEnabled(Z)V

    .line 1728
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/Connect;->setUsageCollectionEnabled(Z)V

    .line 1731
    return-void
.end method

.method public setRunningState(I)V
    .locals 3
    .param p1, "runningState"    # I

    .prologue
    .line 1499
    sget-object v0, Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "setRunningState state="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1501
    return-void
.end method

.method public setStatisticsCollectionEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 1711
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/UserPreferences;->setStatisticsCollectionEnabled(Z)V

    .line 1713
    iput-boolean p1, p0, Lcom/nuance/swype/connect/Connect;->isStaticsCollectionEnabled:Z

    .line 1716
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->queue:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1717
    return-void
.end method

.method public setUsageCollectionEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 1703
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/UserPreferences;->setUsageCollectionEnabled(Z)V

    .line 1704
    iput-boolean p1, p0, Lcom/nuance/swype/connect/Connect;->isUsageCollectionEnabled:Z

    .line 1706
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->queue:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1707
    return-void
.end method

.method protected setupSupportedLanguages(Lcom/nuance/swypeconnect/ac/ACManager;)V
    .locals 4
    .param p1, "manager"    # Lcom/nuance/swypeconnect/ac/ACManager;

    .prologue
    .line 1217
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect;->getDownloadManager()Lcom/nuance/swype/connect/SDKDownloadManager;

    .line 1218
    new-instance v0, Lcom/nuance/swype/connect/Connect$7;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/connect/Connect$7;-><init>(Lcom/nuance/swype/connect/Connect;Lcom/nuance/swypeconnect/ac/ACManager;)V

    .line 1478
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/nuance/swype/input/InputMethods;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1479
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 779
    sget-object v0, Lcom/nuance/swype/connect/Connect;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 781
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 783
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->connection:Lcom/nuance/swype/connect/ConnectedStatus;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->connection:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->unregister()V

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->shutdown()V

    .line 788
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/Connect;->created:Z

    .line 789
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect;->queue:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 791
    :cond_1
    sget-object v0, Lcom/nuance/swype/connect/Connect;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 792
    return-void
.end method
