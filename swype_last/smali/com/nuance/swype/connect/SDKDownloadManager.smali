.class public Lcom/nuance/swype/connect/SDKDownloadManager;
.super Ljava/lang/Object;
.source "SDKDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;,
        Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;,
        Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;,
        Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    }
.end annotation


# static fields
.field public static final BASELINE_ALM_INSTALL_ACTION:Ljava/lang/String; = "com.nuance.swype.input.baseline2ALMUpgrade"

.field private static final COMPRESSED_FILE_EXTENSION:Ljava/lang/String; = ".mp3"

.field public static final EXTRA_INSTALL_LANGUAGE_ID:Ljava/lang/String; = "extra.install.language.id"

.field private static INTERNAL_STORAGE_FREE_SPACE_THRESHOLD:J = 0x0L

.field public static final LANGUAGE_UPDATE_NOTIFICATION:Ljava/lang/String; = "language_update_notification"

.field public static final SELECT_INSTALLED_LANGUAGE:Ljava/lang/String; = "select_installed_language"

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static final trace:Lcom/nuance/swype/util/LogManager$Trace;


# instance fields
.field public final callbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final connection:Lcom/nuance/swype/connect/ConnectedStatus;

.field private final context:Landroid/content/Context;

.field private final coreIdToLanguageNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private langLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;"
        }
    .end annotation
.end field

.field private final languageDownloadList:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private final languageSettingList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private languageSetupComplete:Z

.field private mFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final manager:Lcom/nuance/swypeconnect/ac/ACManager;

.field notificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 53
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getTrace()Lcom/nuance/swype/util/LogManager$Trace;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/connect/SDKDownloadManager;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 65
    const-wide/32 v0, 0x300000

    sput-wide v0, Lcom/nuance/swype/connect/SDKDownloadManager;->INTERNAL_STORAGE_FREE_SPACE_THRESHOLD:J

    .line 71
    const-string/jumbo v0, "SDKDownloadManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swypeconnect/ac/ACManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "acManager"    # Lcom/nuance/swypeconnect/ac/ACManager;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->coreIdToLanguageNameMap:Landroid/util/SparseArray;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->callbackList:Ljava/util/ArrayList;

    .line 94
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    .line 96
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    .line 98
    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->init()Z

    .line 100
    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageListAvailable()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 101
    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->setupLanguages()V

    .line 104
    :cond_40
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$1;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/connect/SDKDownloadManager$1;-><init>(Lcom/nuance/swype/connect/SDKDownloadManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->connection:Lcom/nuance/swype/connect/ConnectedStatus;

    .line 125
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->connection:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->register()V

    .line 126
    return-void
.end method

.method static synthetic access$000()Lcom/nuance/swype/util/LogManager$Log;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/connect/SDKDownloadManager;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKDownloadManager;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/swype/connect/SDKDownloadManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKDownloadManager;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageInstallCompleted(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swype/connect/SDKDownloadManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKDownloadManager;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageUpdated(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/swype/connect/SDKDownloadManager;)Lcom/nuance/swype/connect/ConnectedStatus;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKDownloadManager;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->getConnectedStatus()Lcom/nuance/swype/connect/ConnectedStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()J
    .registers 2

    .prologue
    .line 51
    sget-wide v0, Lcom/nuance/swype/connect/SDKDownloadManager;->INTERNAL_STORAGE_FREE_SPACE_THRESHOLD:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/connect/SDKDownloadManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKDownloadManager;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/SDKDownloadManager;->notifyLanguageDownloadError(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/swype/connect/SDKDownloadManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKDownloadManager;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/swype/connect/SDKDownloadManager;)Landroid/app/NotificationManager;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKDownloadManager;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/nuance/swype/connect/SDKDownloadManager;II)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKDownloadManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageInstallFailed(II)V

    return-void
.end method

.method private download(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;)V
    .registers 8
    .param p1, "language"    # Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .prologue
    .line 240
    :try_start_0
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string/jumbo v3, "LANGUAGE"

    invoke-virtual {v2, v3}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    .line 242
    .local v1, "languageService":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    new-instance v2, Lcom/nuance/swype/input/LanguageList;

    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/nuance/swype/input/LanguageList;-><init>(Landroid/content/Context;)V

    .line 243
    invoke-virtual {p1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getEnglishName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/LanguageList;->getLanguageFlavor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "flavor":Ljava/lang/String;
    if-eqz v0, :cond_35

    .line 245
    sget-object v2, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "download flavor: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 246
    invoke-virtual {p1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getCoreLanguageId()I

    move-result v2

    invoke-interface {v1, v2, v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloadLanguageFlavor(ILjava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V

    .line 253
    .end local v0    # "flavor":Ljava/lang/String;
    .end local v1    # "languageService":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    :goto_34
    return-void

    .line 248
    .restart local v0    # "flavor":Ljava/lang/String;
    .restart local v1    # "languageService":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    :cond_35
    invoke-virtual {p1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getCoreLanguageId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloadLanguage(ILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V
    :try_end_3c
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_3c} :catch_3d

    goto :goto_34

    .line 251
    .end local v0    # "flavor":Ljava/lang/String;
    .end local v1    # "languageService":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    :catch_3d
    move-exception v2

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_34
.end method

.method private getConnectedStatus()Lcom/nuance/swype/connect/ConnectedStatus;
    .registers 2

    .prologue
    .line 962
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->connection:Lcom/nuance/swype/connect/ConnectedStatus;

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 966
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .registers 2

    .prologue
    .line 958
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getPendingIntent(I)Landroid/app/PendingIntent;
    .registers 6
    .param p1, "languageId"    # I

    .prologue
    .line 1050
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "language_update_notification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1051
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "language.id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1053
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private languageDownloadInternal(I)V
    .registers 9
    .param p1, "languageId"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 160
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "languageDownloadInternal("

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string/jumbo v3, ")"

    aput-object v3, v2, v6

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 162
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    monitor-enter v2

    .line 163
    :try_start_1e
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 164
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "languageDownloadInternal("

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ") unknown language."

    aput-object v5, v3, v4

    invoke-interface {v1, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 197
    :cond_45
    :goto_45
    monitor-exit v2

    return-void

    .line 168
    :cond_47
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .line 169
    .local v0, "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    if-eqz v0, :cond_45

    .line 170
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$3;->$SwitchMap$com$nuance$swype$connect$SDKDownloadManager$DownloadableLanguage$Status:[I

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_e0

    goto :goto_45

    .line 173
    :pswitch_65
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "languageDownloadInternal("

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ") download was stopped.  resuming. "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 174
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->DOWNLOADING:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    .line 175
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->download(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;)V

    goto :goto_45

    .line 197
    .end local v0    # "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :catchall_91
    move-exception v1

    monitor-exit v2
    :try_end_93
    .catchall {:try_start_1e .. :try_end_93} :catchall_91

    throw v1

    .line 179
    .restart local v0    # "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :pswitch_94
    :try_start_94
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "languageDownloadInternal("

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ") start new download."

    aput-object v5, v3, v4

    invoke-interface {v1, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 180
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->DOWNLOADING:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    .line 181
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->download(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;)V

    goto :goto_45

    .line 185
    :pswitch_b9
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "languageDownloadInternal("

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ") upgrading existing installed language."

    aput-object v5, v3, v4

    invoke-interface {v1, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 186
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->DOWNLOADING:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    .line 187
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->download(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;)V
    :try_end_dd
    .catchall {:try_start_94 .. :try_end_dd} :catchall_91

    goto/16 :goto_45

    .line 170
    nop

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_65
        :pswitch_65
        :pswitch_94
        :pswitch_b9
    .end packed-switch
.end method

.method private languageInstallCompleted(I)V
    .registers 5
    .param p1, "languageId"    # I

    .prologue
    .line 1035
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .line 1036
    .local v0, "callback":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    if-eqz v0, :cond_11

    .line 1037
    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->installed()V

    .line 1039
    :cond_11
    return-void
.end method

.method private languageInstallFailed(II)V
    .registers 8
    .param p1, "languageId"    # I
    .param p2, "reason"    # I

    .prologue
    .line 1042
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "languageInstallFailed("

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ")"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1043
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .line 1044
    .local v0, "callback":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    if-eqz v0, :cond_2c

    .line 1045
    invoke-virtual {v0, p2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadFailed(I)V

    .line 1047
    :cond_2c
    return-void
.end method

.method private languageUpdated(I)V
    .registers 5
    .param p1, "languageId"    # I

    .prologue
    .line 891
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->callbackList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 893
    :try_start_3
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->callbackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 894
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;>;"
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_20

    .line 895
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    .line 896
    invoke-interface {v1, p1}, Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;->languageUpdated(I)V

    goto :goto_10

    .line 894
    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;>;"
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1

    .line 898
    .restart local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;>;"
    :cond_23
    return-void
.end method

.method private listUpdated()V
    .registers 4

    .prologue
    .line 902
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->callbackList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 904
    :try_start_3
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->callbackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 905
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;>;"
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_20

    .line 906
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    .line 907
    invoke-interface {v1}, Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;->listUpdated()V

    goto :goto_10

    .line 905
    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;>;"
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1

    .line 909
    .restart local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;>;"
    :cond_23
    return-void
.end method

.method private notifyLanguageDownloadError(I)V
    .registers 5
    .param p1, "reason"    # I

    .prologue
    .line 913
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->callbackList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 915
    :try_start_3
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->callbackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 916
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;>;"
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_20

    .line 917
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    .line 918
    invoke-interface {v1, p1}, Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;->onError(I)V

    goto :goto_10

    .line 916
    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;>;"
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1

    .line 920
    .restart local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;>;"
    :cond_23
    return-void
.end method


# virtual methods
.method public addBaseLineToALMUpdateLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V
    .registers 11
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "filePathList"    # [Ljava/lang/String;

    .prologue
    .line 1227
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "addBaseLineToALMUpdateLanguage: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1228
    iget-object v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    monitor-enter v7

    .line 1229
    if-eqz p1, :cond_42

    :try_start_18
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 1230
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;

    sget-object v2, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->UPDATE_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    sget-object v3, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->UPDATABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;-><init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;[Ljava/lang/String;Lcom/nuance/swype/connect/SDKDownloadManager;Lcom/nuance/swype/connect/SDKDownloadManager$1;)V

    .line 1232
    .local v0, "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    .end local v0    # "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :cond_42
    monitor-exit v7

    return-void

    :catchall_44
    move-exception v1

    monitor-exit v7
    :try_end_46
    .catchall {:try_start_18 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public addBuiltinLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V
    .registers 11
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "filePathList"    # [Ljava/lang/String;

    .prologue
    .line 1216
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "addBuiltinLanguage: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1217
    iget-object v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    monitor-enter v7

    .line 1218
    if-eqz p1, :cond_42

    :try_start_18
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 1219
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;

    sget-object v2, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->INSTALLED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    sget-object v3, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->BUILTIN:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;-><init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;[Ljava/lang/String;Lcom/nuance/swype/connect/SDKDownloadManager;Lcom/nuance/swype/connect/SDKDownloadManager$1;)V

    .line 1221
    .local v0, "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    .end local v0    # "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :cond_42
    monitor-exit v7

    return-void

    :catchall_44
    move-exception v1

    monitor-exit v7
    :try_end_46
    .catchall {:try_start_18 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public addInstallAvailable(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V
    .registers 11
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "filePathList"    # [Ljava/lang/String;

    .prologue
    .line 1174
    if-nez p1, :cond_3

    .line 1184
    :goto_2
    return-void

    .line 1177
    :cond_3
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "addInstallAvailable: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1178
    iget-object v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    monitor-enter v7

    .line 1179
    if-eqz p1, :cond_45

    :try_start_1b
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 1180
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;

    sget-object v2, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->DOWNLOAD_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    sget-object v3, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;-><init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;[Ljava/lang/String;Lcom/nuance/swype/connect/SDKDownloadManager;Lcom/nuance/swype/connect/SDKDownloadManager$1;)V

    .line 1182
    .local v0, "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    .end local v0    # "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :cond_45
    monitor-exit v7

    goto :goto_2

    :catchall_47
    move-exception v1

    monitor-exit v7
    :try_end_49
    .catchall {:try_start_1b .. :try_end_49} :catchall_47

    throw v1
.end method

.method public addInstalledLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V
    .registers 11
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "filePathList"    # [Ljava/lang/String;

    .prologue
    .line 1188
    if-nez p1, :cond_3

    .line 1198
    :goto_2
    return-void

    .line 1191
    :cond_3
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "addInstalledLanguage: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1192
    iget-object v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    monitor-enter v7

    .line 1193
    if-eqz p1, :cond_45

    :try_start_1b
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 1194
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;

    sget-object v2, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->INSTALLED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    sget-object v3, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->DOWNLOADED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;-><init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;[Ljava/lang/String;Lcom/nuance/swype/connect/SDKDownloadManager;Lcom/nuance/swype/connect/SDKDownloadManager$1;)V

    .line 1196
    .local v0, "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    .end local v0    # "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :cond_45
    monitor-exit v7

    goto :goto_2

    :catchall_47
    move-exception v1

    monitor-exit v7
    :try_end_49
    .catchall {:try_start_1b .. :try_end_49} :catchall_47

    throw v1
.end method

.method public addTraceLDBUpdateLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V
    .registers 11
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "filePathList"    # [Ljava/lang/String;

    .prologue
    .line 1238
    iget-object v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    monitor-enter v7

    .line 1239
    if-eqz p1, :cond_2f

    :try_start_5
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 1240
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;

    sget-object v2, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->UPDATE_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    sget-object v3, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->UPDATABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;-><init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;[Ljava/lang/String;Lcom/nuance/swype/connect/SDKDownloadManager;Lcom/nuance/swype/connect/SDKDownloadManager$1;)V

    .line 1242
    .local v0, "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    .end local v0    # "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :cond_2f
    monitor-exit v7

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v7
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public addUpdatedLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V
    .registers 11
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "filePathList"    # [Ljava/lang/String;

    .prologue
    .line 1202
    if-nez p1, :cond_3

    .line 1212
    :goto_2
    return-void

    .line 1205
    :cond_3
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "addUpdatedLanguage: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1206
    iget-object v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    monitor-enter v7

    .line 1207
    if-eqz p1, :cond_45

    :try_start_1b
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 1208
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;

    sget-object v2, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->UPDATED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    sget-object v3, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->UPDATABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;-><init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;[Ljava/lang/String;Lcom/nuance/swype/connect/SDKDownloadManager;Lcom/nuance/swype/connect/SDKDownloadManager$1;)V

    .line 1210
    .local v0, "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    .end local v0    # "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :cond_45
    monitor-exit v7

    goto :goto_2

    :catchall_47
    move-exception v1

    monitor-exit v7
    :try_end_49
    .catchall {:try_start_1b .. :try_end_49} :catchall_47

    throw v1
.end method

.method public getDownloadingLanguageList()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    monitor-enter v1

    .line 378
    :try_start_3
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    monitor-exit v1

    return-object v0

    .line 379
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getLanguageFromId(I)Lcom/nuance/swype/input/InputMethods$Language;
    .registers 7
    .param p1, "coreLanguageId"    # I

    .prologue
    .line 389
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->langLookup:Ljava/util/Map;

    if-nez v1, :cond_3a

    .line 390
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods;->getAllLanguages()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->langLookup:Ljava/util/Map;

    .line 391
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->langLookup:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 392
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;>;"
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->coreIdToLanguageNameMap:Landroid/util/SparseArray;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_1a

    .line 395
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;>;"
    :cond_3a
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->langLookup:Ljava/util/Map;

    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->coreIdToLanguageNameMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$Language;

    return-object v1
.end method

.method public getSettingDownloadLanguageList()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->getSettingDownloadLanguageList(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSettingDownloadLanguageList(Z)Ljava/util/Map;
    .registers 7
    .param p1, "excludeBuiltinALMLanguages"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    monitor-enter v3

    .line 361
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 362
    .local v1, "localList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;>;"
    if-eqz p1, :cond_35

    .line 363
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 364
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;>;>;"
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 365
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 366
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getType()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    move-result-object v2

    sget-object v4, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->BUILTIN:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    if-ne v2, v4, :cond_14

    .line 367
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_14

    .line 372
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;>;>;"
    .end local v1    # "localList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;>;"
    :catchall_32
    move-exception v2

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v2

    .line 371
    .restart local v1    # "localList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;>;"
    :cond_35
    :try_start_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_32

    return-object v1
.end method

.method init()Z
    .registers 3

    .prologue
    .line 141
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/SDKDownloadManager$2;-><init>(Lcom/nuance/swype/connect/SDKDownloadManager;)V

    .line 147
    .local v0, "callback":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->registerLanguageListCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;)Z

    move-result v1

    .line 148
    .local v1, "result":Z
    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;->onLanguageListUpdate()V

    .line 149
    return v1
.end method

.method public isALMUpdateAvailable(Ljava/lang/String;Ljava/util/List;Z)Z
    .registers 8
    .param p1, "ldbFilePath"    # Ljava/lang/String;
    .param p3, "checkAssetOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 1154
    .local p2, "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    const/4 v1, 0x0

    .line 1155
    .local v1, "updateAvailable":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 1156
    .local v0, "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1157
    invoke-virtual {p0, p1, v0, p3}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLDBUpdateAvailable(Ljava/lang/String;Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;Z)Z

    move-result v1

    goto :goto_5

    .line 1160
    .end local v0    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    :cond_1c
    return v1
.end method

.method public isLDBUpdateAvailable(Ljava/lang/String;Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;Z)Z
    .registers 11
    .param p1, "ldbFilePath"    # Ljava/lang/String;
    .param p2, "db"    # Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .param p3, "checkAssetOnly"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1276
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    if-eqz v4, :cond_6d

    .line 1277
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/input/DatabaseConfig;->getExternalDatabasePath(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    .line 1278
    array-length v4, v4

    if-gtz v4, :cond_43

    move v4, v3

    .line 1279
    :goto_10
    if-eqz v4, :cond_45

    .line 1280
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->mFiles:Ljava/util/Set;

    if-eqz v4, :cond_6d

    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->mFiles:Ljava/util/Set;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".mp3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->mFiles:Ljava/util/Set;

    .line 1281
    invoke-virtual {p2}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 1312
    :cond_42
    :goto_42
    return v1

    :cond_43
    move v4, v1

    .line 1278
    goto :goto_10

    .line 1285
    :cond_45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".mp3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/DatabaseConfig;->foundFileInExternalPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_42

    .line 1286
    invoke-virtual {p2}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/DatabaseConfig;->foundFileInExternalPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_42

    .line 1291
    :cond_6d
    if-eqz p3, :cond_ad

    .line 1292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".mp3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/DatabaseConfig;->foundFileInExternalPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_97

    .line 1293
    invoke-virtual {p2}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/DatabaseConfig;->foundFileInExternalPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_98

    :cond_97
    move v1, v3

    .line 1295
    .local v1, "foundFileInExternalPath":Z
    :cond_98
    invoke-virtual {p2}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ab

    if-nez v1, :cond_ab

    .line 1296
    invoke-virtual {p2}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    :cond_ab
    move v1, v3

    .line 1299
    goto :goto_42

    .line 1302
    .end local v1    # "foundFileInExternalPath":Z
    :cond_ad
    const/4 v0, 0x0

    .line 1303
    .local v0, "downloadedLDB":Z
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1304
    .local v2, "langFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c8

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_c8

    .line 1305
    const/4 v0, 0x1

    .line 1307
    :cond_c8
    invoke-virtual {p2}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d4

    if-eqz v0, :cond_de

    .line 1308
    :cond_d4
    invoke-virtual {p2}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_42

    :cond_de
    move v1, v3

    .line 1310
    goto/16 :goto_42
.end method

.method public isLanguageAvailableForUpdate(Lcom/nuance/swype/input/InputMethods$Language;)Z
    .registers 14
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1103
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v3

    .line 1104
    .local v3, "languageId":I
    iget-boolean v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSetupComplete:Z

    if-nez v5, :cond_e

    move v5, v6

    .line 1150
    :goto_d
    return v5

    .line 1109
    :cond_e
    iget-object v8, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    monitor-enter v8

    .line 1110
    :try_start_11
    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    .line 1111
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v5

    sget-object v9, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->UPDATE_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-ne v5, v9, :cond_34

    .line 1113
    monitor-exit v8

    move v5, v7

    goto :goto_d

    .line 1115
    :cond_34
    monitor-exit v8
    :try_end_35
    .catchall {:try_start_11 .. :try_end_35} :catchall_51

    .line 1118
    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a5

    .line 1119
    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/nuance/swype/input/DatabaseConfig;->getOldLanguageIdAndFileMappingTable(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v5

    .line 1120
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1122
    .local v4, "ldbFile":Ljava/lang/String;
    if-nez v4, :cond_54

    move v5, v6

    .line 1125
    goto :goto_d

    .line 1115
    .end local v4    # "ldbFile":Ljava/lang/String;
    :catchall_51
    move-exception v5

    :try_start_52
    monitor-exit v8
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v5

    .line 1128
    .restart local v4    # "ldbFile":Ljava/lang/String;
    :cond_54
    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v5, v8}, Lcom/nuance/swype/input/DatabaseConfig;->getLanguageDBList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v5

    .line 1129
    iget-object v8, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1132
    .local v1, "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    invoke-virtual {p0, v4, v1, v6}, Lcom/nuance/swype/connect/SDKDownloadManager;->isALMUpdateAvailable(Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v0

    .line 1134
    .local v0, "almUpdateAvailable":Z
    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1137
    .local v2, "filePath":Ljava/lang/String;
    if-nez v0, :cond_88

    .line 1138
    sget-object v5, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v8, v11, [Ljava/lang/Object;

    const-string/jumbo v9, "isLanguageAvailableForUpdate: "

    aput-object v9, v8, v6

    aput-object v4, v8, v7

    const-string/jumbo v7, " is already ALM"

    aput-object v7, v8, v10

    invoke-interface {v5, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    move v5, v6

    .line 1140
    goto :goto_d

    .line 1143
    :cond_88
    sget-object v5, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v8, v11, [Ljava/lang/Object;

    const-string/jumbo v9, "isLanguageAvailableForUpdate: filePath() "

    aput-object v9, v8, v6

    aput-object v2, v8, v7

    const-string/jumbo v9, " added to baseline to ALM update list"

    aput-object v9, v8, v10

    invoke-interface {v5, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1145
    new-array v5, v7, [Ljava/lang/String;

    aput-object v2, v5, v6

    invoke-virtual {p0, p1, v5}, Lcom/nuance/swype/connect/SDKDownloadManager;->addBaseLineToALMUpdateLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    move v5, v7

    .line 1147
    goto/16 :goto_d

    .end local v0    # "almUpdateAvailable":Z
    .end local v1    # "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v4    # "ldbFile":Ljava/lang/String;
    :cond_a5
    move v5, v6

    .line 1150
    goto/16 :goto_d
.end method

.method public isLanguageListAvailable()Z
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 341
    :try_start_1
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string/jumbo v4, "LANGUAGE"

    invoke-virtual {v3, v4}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    .line 342
    .local v1, "languageService":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    sget-object v3, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "isLanguageListAvailable()"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isLanguageListAvailable()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 343
    invoke-interface {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isLanguageListAvailable()Z
    :try_end_28
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_1 .. :try_end_28} :catch_2a

    move-result v2

    .line 348
    .end local v1    # "languageService":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    :goto_29
    return v2

    .line 344
    :catch_2a
    move-exception v0

    .line 345
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    sget-object v3, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Exception isLanguageListAvailable get service: LANGUAGE_SERVICE message: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 345
    invoke-interface {v3, v4, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_29
.end method

.method public isLanguageSetupComplete()Z
    .registers 2

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSetupComplete:Z

    return v0
.end method

.method public isTraceLDBUpdateAvailable(Ljava/lang/String;Ljava/util/List;Z)Z
    .registers 8
    .param p1, "ldbFilePath"    # Ljava/lang/String;
    .param p3, "checkAssetOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 1164
    .local p2, "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    const/4 v1, 0x0

    .line 1165
    .local v1, "updateAvailable":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 1166
    .local v0, "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isTraceLDB()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1167
    invoke-virtual {p0, p1, v0, p3}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLDBUpdateAvailable(Ljava/lang/String;Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;Z)Z

    move-result v1

    goto :goto_5

    .line 1170
    .end local v0    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    :cond_1c
    return v1
.end method

.method public languageCancel(IZ)Z
    .registers 10
    .param p1, "languageId"    # I
    .param p2, "removeNotification"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 256
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "languageCancel("

    aput-object v5, v4, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x2

    const-string/jumbo v6, ")"

    aput-object v6, v4, v5

    invoke-interface {v1, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 258
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    monitor-enter v4

    .line 259
    :try_start_1e
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .line 261
    .local v0, "downloadLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    if-eqz v0, :cond_36

    .line 262
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->CANCELED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v5}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    .line 263
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setProgress(I)V

    .line 266
    :cond_36
    if-eqz p2, :cond_41

    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_41

    .line 267
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_41
    .catchall {:try_start_1e .. :try_end_41} :catchall_58

    .line 270
    :cond_41
    if-eqz v0, :cond_55

    .line 272
    :try_start_43
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string/jumbo v5, "LANGUAGE"

    invoke-virtual {v1, v5}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    .line 273
    invoke-interface {v1, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->cancelDownload(I)V
    :try_end_51
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_43 .. :try_end_51} :catch_54
    .catchall {:try_start_43 .. :try_end_51} :catchall_58

    .line 274
    :try_start_51
    monitor-exit v4

    move v1, v2

    .line 280
    :goto_53
    return v1

    :catch_54
    move-exception v1

    .line 278
    :cond_55
    monitor-exit v4

    move v1, v3

    .line 280
    goto :goto_53

    .line 278
    .end local v0    # "downloadLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :catchall_58
    move-exception v1

    monitor-exit v4
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method public languageDownload(I)V
    .registers 10
    .param p1, "languageId"    # I

    .prologue
    const/4 v7, 0x0

    .line 207
    sget-object v3, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "languageDownload("

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ")"

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 209
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 210
    sget-object v3, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v4, "trying to install unknown languageId"

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 234
    :cond_2f
    :goto_2f
    return-void

    .line 214
    :cond_30
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 215
    const/4 v2, 0x0

    .line 217
    .local v2, "languageService":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    :try_start_3d
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string/jumbo v4, "LANGUAGE"

    invoke-virtual {v3, v4}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    move-object v2, v0
    :try_end_4a
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_3d .. :try_end_4a} :catch_6e

    .line 222
    :goto_4a
    if-eqz v2, :cond_2f

    .line 226
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;

    .line 227
    # invokes: Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;->addToSupportedOrExistingLanguageServiceList(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;)V
    invoke-static {v3, v2}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;->access$200(Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;)V

    .line 229
    .end local v2    # "languageService":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    :cond_5b
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v1

    .line 230
    .local v1, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v1, :cond_6a

    .line 231
    invoke-virtual {v1, p1, v7}, Lcom/nuance/swype/input/IME;->checkLanguageUpdates(IZ)V

    .line 233
    :cond_6a
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadInternal(I)V

    goto :goto_2f

    .line 219
    .end local v1    # "ime":Lcom/nuance/swype/input/IME;
    .restart local v2    # "languageService":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    :catch_6e
    move-exception v3

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_4a
.end method

.method languageSetupComplete()V
    .registers 2

    .prologue
    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSetupComplete:Z

    .line 154
    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageListAvailable()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 155
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->listUpdated()V

    .line 157
    :cond_c
    return-void
.end method

.method public languageUninstall(I)Z
    .registers 16
    .param p1, "languageId"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v13, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 284
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/SDKDownloadManager;->getLanguageFromId(I)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v3

    .line 285
    .local v3, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    if-nez v3, :cond_22

    .line 286
    sget-object v10, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v11, v11, [Ljava/lang/Object;

    const-string/jumbo v12, "Failed to uninstall language "

    aput-object v12, v11, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    const-string/jumbo v9, ", language not found."

    aput-object v9, v11, v13

    invoke-interface {v10, v11}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 332
    :goto_21
    return v8

    .line 290
    :cond_22
    iget-object v10, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_48

    .line 291
    sget-object v9, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is not in the download setting list"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_21

    .line 295
    :cond_48
    new-instance v4, Lcom/nuance/swype/connect/LanguageInstall;

    iget-object v10, v3, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    iget-object v11, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    invoke-direct {v4, v10, v11}, Lcom/nuance/swype/connect/LanguageInstall;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 297
    .local v4, "langInstaller":Lcom/nuance/swype/connect/LanguageInstall;
    :try_start_51
    iget-object v10, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string/jumbo v11, "LANGUAGE"

    invoke-virtual {v10, v11}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v5

    check-cast v5, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    .line 298
    .local v5, "languageService":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    iget-object v10, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;

    .line 301
    .local v0, "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;
    iget-object v10, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_6b} :catch_b8

    .line 302
    :try_start_6b
    iget-object v11, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 303
    .local v2, "isAlreadyInDownloadingList":Z
    monitor-exit v10
    :try_end_76
    .catchall {:try_start_6b .. :try_end_76} :catchall_b5

    .line 305
    if-nez v2, :cond_7b

    .line 306
    :try_start_78
    # invokes: Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;->addToSupportedOrExistingLanguageServiceList(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;)V
    invoke-static {v0, v5}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;->access$200(Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;)V

    .line 309
    :cond_7b
    invoke-virtual {v4}, Lcom/nuance/swype/connect/LanguageInstall;->uninstall()V

    .line 310
    invoke-interface {v5, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageUninstalled(I)V

    .line 314
    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;->getOriginalStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v10

    sget-object v11, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->UPDATED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-ne v10, v11, :cond_df

    .line 315
    sget-object v6, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->UPDATE_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .line 316
    .local v6, "newStatus":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;
    sget-object v7, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->UPDATABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    .line 322
    .local v7, "newType":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;
    :goto_8d
    invoke-virtual {v0, v6}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;->changeOriginalStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;)V

    .line 323
    invoke-virtual {v0, v7}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;->setType(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;)V

    .line 325
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;->setProgress(I)V

    .line 326
    sget-object v10, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "uninstall language "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string/jumbo v13, " complete"

    aput-object v13, v11, v12

    invoke-interface {v10, v11}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_b2} :catch_b8

    move v8, v9

    .line 327
    goto/16 :goto_21

    .line 303
    .end local v2    # "isAlreadyInDownloadingList":Z
    .end local v6    # "newStatus":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;
    .end local v7    # "newType":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;
    :catchall_b5
    move-exception v9

    :try_start_b6
    monitor-exit v10
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    :try_start_b7
    throw v9
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_b8} :catch_b8

    .line 328
    .end local v0    # "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;
    .end local v5    # "languageService":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    :catch_b8
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Exception uninstalling: lang="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 330
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 329
    invoke-interface {v9, v10, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 318
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;
    .restart local v2    # "isAlreadyInDownloadingList":Z
    .restart local v5    # "languageService":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    :cond_df
    :try_start_df
    sget-object v6, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->DOWNLOAD_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .line 319
    .restart local v6    # "newStatus":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;
    sget-object v7, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e3} :catch_b8

    .restart local v7    # "newType":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;
    goto :goto_8d
.end method

.method public postLanguageUpdateNotification(Lcom/nuance/swype/input/InputMethods$Language;)V
    .registers 12
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1061
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/connect/Connect;->isLicensed()Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->isTrialExpired()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1096
    :cond_1c
    :goto_1c
    return-void

    .line 1064
    :cond_1d
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v1

    .line 1066
    .local v1, "languageId":I
    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    .line 1067
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v5

    sget-object v6, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->UPDATE_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-ne v5, v6, :cond_1c

    .line 1069
    sget-object v5, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "postLanguageUpdateNotification: "

    aput-object v7, v6, v9

    iget-object v7, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1072
    new-instance v2, Lcom/nuance/android/compat/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 1074
    .local v2, "notification":Lcom/nuance/android/compat/NotificationCompat$Builder;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_66

    .line 1077
    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->getPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/PendingIntent;->cancel()V

    .line 1080
    :cond_66
    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1081
    .local v3, "res":Landroid/content/res/Resources;
    sget v5, Lcom/nuance/swype/input/R$string;->notification_language_update_title:I

    .line 1082
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    .line 1083
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 1081
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1085
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$string;->notification_language_update:I

    .line 1086
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$drawable;->swype_icon:I

    .line 1087
    invoke-virtual {v5, v6}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setSmallIcon(I)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v5

    .line 1088
    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->getPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 1090
    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1091
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 1092
    .local v0, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v0, :cond_1c

    .line 1093
    invoke-virtual {v0, v1, v8}, Lcom/nuance/swype/input/IME;->checkLanguageUpdates(IZ)V

    goto/16 :goto_1c
.end method

.method public registerDataCallback(Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    .prologue
    .line 874
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->callbackList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 875
    :try_start_3
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->callbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 876
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->callbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    :cond_10
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public registerLanguageListCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;)Z
    .registers 5
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;

    .prologue
    .line 923
    const/4 v0, 0x0

    .line 925
    .local v0, "success":Z
    :try_start_1
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string/jumbo v2, "LANGUAGE"

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    .line 926
    invoke-interface {v1, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;)V
    :try_end_f
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_1 .. :try_end_f} :catch_11

    .line 927
    const/4 v0, 0x1

    .line 930
    :goto_10
    return v0

    :catch_11
    move-exception v1

    goto :goto_10
.end method

.method public removeLanguageFromList(I)V
    .registers 5
    .param p1, "languageId"    # I

    .prologue
    .line 1269
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    monitor-enter v1

    .line 1270
    :try_start_3
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public setupLanguages()V
    .registers 15

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 976
    sget-object v6, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v9, v7, [Ljava/lang/Object;

    const-string/jumbo v10, "setupLanguages"

    aput-object v10, v9, v8

    invoke-interface {v6, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 978
    :try_start_e
    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string/jumbo v9, "LANGUAGE"

    invoke-virtual {v6, v9}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v6

    check-cast v6, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    .line 979
    invoke-interface {v6}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->getDatabaseList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_21
    :goto_21
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_130

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;

    .line 980
    .local v2, "info":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;
    invoke-interface {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;->getXt9LanguageId()I

    move-result v4

    .line 981
    .local v4, "languageId":I
    sget-object v5, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    .line 982
    .local v5, "type":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;
    const/4 v0, 0x0

    .line 983
    .local v0, "almUpdateAvailable":Z
    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 984
    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    invoke-virtual {v6}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getType()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    move-result-object v6

    sget-object v10, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->UPDATABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    if-ne v6, v10, :cond_c6

    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    .line 986
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    invoke-virtual {v6}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v6

    sget-object v10, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->UPDATE_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-ne v6, v10, :cond_c6

    move v0, v7

    .line 988
    :goto_69
    sget-object v6, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "languageId: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " almUpdateAvailable: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-interface {v6, v10}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 990
    :cond_8f
    invoke-interface {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;->isNewerVersionAvailable()Z

    move-result v6

    if-nez v6, :cond_97

    if-eqz v0, :cond_c8

    .line 991
    :cond_97
    sget-object v5, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->UPDATABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    .line 998
    :cond_99
    :goto_99
    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d7

    .line 999
    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .line 1000
    .local v1, "dlLang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getType()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    move-result-object v6

    if-eq v6, v5, :cond_21

    .line 1002
    invoke-virtual {v1, v5}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setType(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;)V

    .line 1003
    invoke-virtual {p0, v5}, Lcom/nuance/swype/connect/SDKDownloadManager;->statusFromType(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;)Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v6

    const/4 v10, 0x1

    invoke-virtual {v1, v6, v10}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    goto/16 :goto_21

    .line 1031
    .end local v0    # "almUpdateAvailable":Z
    .end local v1    # "dlLang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    .end local v2    # "info":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;
    .end local v4    # "languageId":I
    .end local v5    # "type":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;
    :catch_c4
    move-exception v6

    :cond_c5
    :goto_c5
    return-void

    .restart local v0    # "almUpdateAvailable":Z
    .restart local v2    # "info":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;
    .restart local v4    # "languageId":I
    .restart local v5    # "type":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;
    :cond_c6
    move v0, v8

    .line 986
    goto :goto_69

    .line 992
    :cond_c8
    invoke-interface {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;->isInstalled()Z

    move-result v6

    if-eqz v6, :cond_99

    .line 993
    invoke-interface {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;->isPreinstalled()Z

    move-result v6

    if-nez v6, :cond_21

    .line 996
    sget-object v5, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->DOWNLOADED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    goto :goto_99

    .line 1006
    :cond_d7
    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_116

    .line 1007
    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    sget-object v6, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->UPDATABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    if-ne v5, v6, :cond_10d

    .line 1010
    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .line 1011
    invoke-virtual {p0, v5}, Lcom/nuance/swype/connect/SDKDownloadManager;->statusFromType(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;)Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->changeOriginalStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;)V

    .line 1014
    :cond_10d
    sget-object v6, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    if-ne v5, v6, :cond_21

    .line 1015
    invoke-virtual {p0, v4}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownload(I)V

    goto/16 :goto_21

    .line 1018
    :cond_116
    invoke-virtual {p0, v4}, Lcom/nuance/swype/connect/SDKDownloadManager;->getLanguageFromId(I)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v3

    .line 1019
    .local v3, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v3, :cond_21

    .line 1020
    new-instance v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    invoke-virtual {p0, v5}, Lcom/nuance/swype/connect/SDKDownloadManager;->statusFromType(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;)Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v6

    invoke-direct {v1, v3, v6, v5, p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;-><init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;Lcom/nuance/swype/connect/SDKDownloadManager;)V

    .line 1021
    .restart local v1    # "dlLang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_21

    .line 1026
    .end local v0    # "almUpdateAvailable":Z
    .end local v1    # "dlLang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    .end local v2    # "info":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;
    .end local v3    # "lang":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v4    # "languageId":I
    .end local v5    # "type":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;
    :cond_130
    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageSetupComplete()Z

    move-result v6

    if-eqz v6, :cond_c5

    .line 1027
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->listUpdated()V
    :try_end_139
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_e .. :try_end_139} :catch_c4

    goto :goto_c5
.end method

.method statusFromType(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;)Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;
    .registers 3
    .param p1, "type"    # Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    .prologue
    .line 942
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    if-ne p1, v0, :cond_7

    .line 943
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->DOWNLOAD_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .line 950
    :goto_6
    return-object v0

    .line 946
    :cond_7
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->UPDATABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    if-ne p1, v0, :cond_e

    .line 947
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->UPDATE_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    goto :goto_6

    .line 950
    :cond_e
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->INSTALLED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    goto :goto_6
.end method

.method public unregisterDataCallback(Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    .prologue
    .line 882
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->callbackList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 883
    :try_start_3
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->callbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 884
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->callbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 886
    :cond_10
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public unregisterLanguageListCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;

    .prologue
    .line 935
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string/jumbo v1, "LANGUAGE"

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    .line 936
    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->unregisterCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;)V
    :try_end_e
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_e} :catch_f

    .line 939
    :goto_e
    return-void

    :catch_f
    move-exception v0

    goto :goto_e
.end method
