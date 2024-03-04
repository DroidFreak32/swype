.class public Lcom/nuance/swype/connect/SDKDownloadManager;
.super Ljava/lang/Object;
.source "SDKDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/connect/SDKDownloadManager$3;,
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

.field private context:Landroid/content/Context;

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

.field private manager:Lcom/nuance/swypeconnect/ac/ACManager;

.field notificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getTrace()Lcom/nuance/swype/util/LogManager$Trace;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/connect/SDKDownloadManager;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 62
    const-wide/32 v0, 0x300000

    sput-wide v0, Lcom/nuance/swype/connect/SDKDownloadManager;->INTERNAL_STORAGE_FREE_SPACE_THRESHOLD:J

    .line 68
    const-string v0, "SDKDownloadManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swypeconnect/ac/ACManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "acManager"    # Lcom/nuance/swypeconnect/ac/ACManager;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->coreIdToLanguageNameMap:Landroid/util/SparseArray;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->callbackList:Ljava/util/ArrayList;

    .line 91
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    .line 93
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    .line 95
    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->init()Z

    .line 97
    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageListAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->getAvailableLanguages()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->setupLanguages(Ljava/util/List;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;)V

    .line 99
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->getDownloadedLanguages()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->DOWNLOADED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->setupLanguages(Ljava/util/List;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;)V

    .line 100
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->getUpdatableLanguages()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->UPDATABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->setupLanguages(Ljava/util/List;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;)V

    .line 103
    :cond_0
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$1;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/connect/SDKDownloadManager$1;-><init>(Lcom/nuance/swype/connect/SDKDownloadManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->connection:Lcom/nuance/swype/connect/ConnectedStatus;

    .line 124
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->connection:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->register()V

    .line 125
    return-void
.end method

.method static synthetic access$000()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/connect/SDKDownloadManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKDownloadManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/swype/connect/SDKDownloadManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKDownloadManager;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageInstallCompleted(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/connect/SDKDownloadManager;Ljava/util/List;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKDownloadManager;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/connect/SDKDownloadManager;->setupLanguages(Ljava/util/List;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/swype/connect/SDKDownloadManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKDownloadManager;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageUpdated(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/swype/connect/SDKDownloadManager;)Lcom/nuance/swype/connect/ConnectedStatus;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKDownloadManager;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->getConnectedStatus()Lcom/nuance/swype/connect/ConnectedStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()J
    .locals 2

    .prologue
    .line 48
    sget-wide v0, Lcom/nuance/swype/connect/SDKDownloadManager;->INTERNAL_STORAGE_FREE_SPACE_THRESHOLD:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/nuance/swype/connect/SDKDownloadManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKDownloadManager;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/swype/connect/SDKDownloadManager;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKDownloadManager;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/nuance/swype/connect/SDKDownloadManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKDownloadManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageInstallFailed(II)V

    return-void
.end method

.method private download(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;)V
    .locals 4
    .param p1, "language"    # Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .prologue
    .line 249
    :try_start_0
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v3, "LANGUAGE"

    invoke-virtual {v2, v3}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    .line 251
    .local v1, "languageService":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    new-instance v2, Lcom/nuance/swype/input/LanguageList;

    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/nuance/swype/input/LanguageList;-><init>(Landroid/content/Context;)V

    .line 252
    invoke-virtual {p1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getEnglishName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/LanguageList;->getLanguageFlavor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "flavor":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 254
    sget-object v2, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "download flavor: "

    invoke-virtual {v2, v3, v0}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 255
    invoke-virtual {p1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getCoreLanguageId()I

    move-result v2

    invoke-interface {v1, v2, v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloadLanguageFlavor(ILjava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V

    .line 262
    .end local v0    # "flavor":Ljava/lang/String;
    .end local v1    # "languageService":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    :goto_0
    return-void

    .line 257
    .restart local v0    # "flavor":Ljava/lang/String;
    .restart local v1    # "languageService":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    :cond_0
    invoke-virtual {p1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getCoreLanguageId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloadLanguage(ILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    .end local v0    # "flavor":Ljava/lang/String;
    .end local v1    # "languageService":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_0
.end method

.method private getAvailableLanguages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 371
    .local v0, "langs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v2, "LANGUAGE"

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    .line 372
    invoke-interface {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->getAvailableLanguages()Ljava/util/List;

    move-result-object v0

    .line 373
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAvailableLanguages..."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getConnectedStatus()Lcom/nuance/swype/connect/ConnectedStatus;
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->connection:Lcom/nuance/swype/connect/ConnectedStatus;

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method private getDownloadedLanguages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 382
    .local v0, "langs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v2, "LANGUAGE"

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    .line 383
    invoke-interface {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->getDownloadedLanguages()Ljava/util/List;

    move-result-object v0

    .line 384
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDownloadedLanguages..."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getPendingIntent(I)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "languageId"    # I

    .prologue
    .line 1074
    new-instance v0, Landroid/content/Intent;

    const-string v1, "language_update_notification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1075
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "language.id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1077
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1082
    return-object v1
.end method

.method private getUpdatableLanguages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 393
    .local v0, "langs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v2, "LANGUAGE"

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    .line 394
    invoke-interface {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->getUpdatableLanguages()Ljava/util/List;

    move-result-object v0

    .line 395
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getUpdatableLanguages..."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private languageDownloadInternal(I)V
    .locals 7
    .param p1, "languageId"    # I

    .prologue
    .line 171
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "languageDownloadInternal("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    monitor-enter v2

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 175
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "languageDownloadInternal("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ") unknown language."

    invoke-virtual {v1, v3, v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .line 180
    .local v0, "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    if-eqz v0, :cond_0

    .line 181
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$3;->$SwitchMap$com$nuance$swype$connect$SDKDownloadManager$DownloadableLanguage$Status:[I

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 184
    :pswitch_0
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "languageDownloadInternal("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ") download was stopped.  resuming. "

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v6

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->DOWNLOADING:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    .line 186
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->download(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 199
    .end local v0    # "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 190
    .restart local v0    # "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :pswitch_1
    :try_start_1
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "languageDownloadInternal("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ") start new download."

    invoke-virtual {v1, v3, v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->DOWNLOADING:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    .line 192
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->download(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;)V

    goto :goto_0

    .line 196
    :pswitch_2
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "languageDownloadInternal("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ") upgrading existing installed language."

    invoke-virtual {v1, v3, v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 197
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->DOWNLOADING:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    .line 198
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->download(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private languageInstallCompleted(I)V
    .locals 3
    .param p1, "languageId"    # I

    .prologue
    .line 1059
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .line 1060
    .local v0, "callback":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    if-eqz v0, :cond_0

    .line 1061
    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->installed()V

    .line 1063
    :cond_0
    return-void
.end method

.method private languageInstallFailed(II)V
    .locals 5
    .param p1, "languageId"    # I
    .param p2, "reason"    # I

    .prologue
    .line 1066
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "languageInstallFailed("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1067
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .line 1068
    .local v0, "callback":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    if-eqz v0, :cond_0

    .line 1069
    invoke-virtual {v0, p2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadFailed(I)V

    .line 1071
    :cond_0
    return-void
.end method

.method private languageUpdated(I)V
    .locals 5
    .param p1, "languageId"    # I

    .prologue
    .line 946
    const/4 v1, 0x0

    .line 947
    .local v1, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;>;"
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->callbackList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 948
    :try_start_0
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->callbackList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    .line 949
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 950
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    .line 951
    invoke-interface {v3, p1}, Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;->languageUpdated(I)V

    goto :goto_0

    .line 949
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 953
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private listUpdated()V
    .locals 5

    .prologue
    .line 956
    const/4 v1, 0x0

    .line 957
    .local v1, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;>;"
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->callbackList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 958
    :try_start_0
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->callbackList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    .line 959
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 960
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    .line 961
    invoke-interface {v3}, Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;->listUpdated()V

    goto :goto_0

    .line 959
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 963
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private setupLanguages(Ljava/util/List;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;)V
    .locals 8
    .param p2, "type"    # Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1019
    .local p1, "languageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v4, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "setupLanguages...languageList: "

    const-string v6, "...type: "

    invoke-virtual {v4, v5, p1, v6, p2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1020
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1021
    .local v3, "languageId":I
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1022
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .line 1023
    .local v0, "dlLang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getType()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    move-result-object v4

    if-eq v4, p2, :cond_0

    .line 1025
    invoke-virtual {v0, p2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setType(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;)V

    .line 1026
    invoke-virtual {p0, p2}, Lcom/nuance/swype/connect/SDKDownloadManager;->statusFromType(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;)Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    goto :goto_0

    .line 1029
    .end local v0    # "dlLang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1030
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1031
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    sget-object v4, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->UPDATABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    if-ne p2, v4, :cond_2

    .line 1034
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .line 1035
    invoke-virtual {p0, p2}, Lcom/nuance/swype/connect/SDKDownloadManager;->statusFromType(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;)Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->changeOriginalStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;)V

    .line 1038
    :cond_2
    sget-object v4, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    if-ne p2, v4, :cond_0

    .line 1039
    invoke-virtual {p0, v3}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownload(I)V

    goto/16 :goto_0

    .line 1043
    :cond_3
    invoke-virtual {p0, v3}, Lcom/nuance/swype/connect/SDKDownloadManager;->getLanguageFromId(I)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    .line 1044
    .local v2, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v2, :cond_0

    .line 1045
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    invoke-virtual {p0, p2}, Lcom/nuance/swype/connect/SDKDownloadManager;->statusFromType(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;)Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v4

    invoke-direct {v0, v2, v4, p2, p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;-><init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;Lcom/nuance/swype/connect/SDKDownloadManager;)V

    .line 1046
    .restart local v0    # "dlLang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1052
    .end local v0    # "dlLang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    .end local v2    # "lang":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v3    # "languageId":I
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageSetupComplete()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1053
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->listUpdated()V

    .line 1055
    :cond_5
    return-void
.end method


# virtual methods
.method public addBaseLineToALMUpdateLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V
    .locals 8
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "filePathList"    # [Ljava/lang/String;

    .prologue
    .line 1271
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "addBaseLineToALMUpdateLanguage: "

    iget-object v3, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1272
    iget-object v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    monitor-enter v7

    .line 1273
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1274
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;

    sget-object v2, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->UPDATE_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    sget-object v3, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->UPDATABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;-><init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;[Ljava/lang/String;Lcom/nuance/swype/connect/SDKDownloadManager;Lcom/nuance/swype/connect/SDKDownloadManager$1;)V

    .line 1276
    .local v0, "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    .end local v0    # "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v7

    throw v1
.end method

.method public addBuiltinLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V
    .locals 8
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "filePathList"    # [Ljava/lang/String;

    .prologue
    .line 1260
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "addBuiltinLanguage: "

    iget-object v3, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1261
    iget-object v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    monitor-enter v7

    .line 1262
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1263
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;

    sget-object v2, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->INSTALLED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    sget-object v3, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->BUILTIN:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;-><init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;[Ljava/lang/String;Lcom/nuance/swype/connect/SDKDownloadManager;Lcom/nuance/swype/connect/SDKDownloadManager$1;)V

    .line 1265
    .local v0, "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    .end local v0    # "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v7

    throw v1
.end method

.method public addInstallAvailable(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V
    .locals 8
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "filePathList"    # [Ljava/lang/String;

    .prologue
    .line 1218
    if-nez p1, :cond_0

    .line 1228
    :goto_0
    return-void

    .line 1221
    :cond_0
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "addInstallAvailable: "

    iget-object v3, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1222
    iget-object v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    monitor-enter v7

    .line 1223
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1224
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;

    sget-object v2, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->DOWNLOAD_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    sget-object v3, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;-><init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;[Ljava/lang/String;Lcom/nuance/swype/connect/SDKDownloadManager;Lcom/nuance/swype/connect/SDKDownloadManager$1;)V

    .line 1226
    .local v0, "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    .end local v0    # "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v7

    throw v1
.end method

.method public addInstalledLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V
    .locals 8
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "filePathList"    # [Ljava/lang/String;

    .prologue
    .line 1232
    if-nez p1, :cond_0

    .line 1242
    :goto_0
    return-void

    .line 1235
    :cond_0
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "addInstalledLanguage: "

    iget-object v3, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1236
    iget-object v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    monitor-enter v7

    .line 1237
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1238
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;

    sget-object v2, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->INSTALLED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    sget-object v3, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->DOWNLOADED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;-><init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;[Ljava/lang/String;Lcom/nuance/swype/connect/SDKDownloadManager;Lcom/nuance/swype/connect/SDKDownloadManager$1;)V

    .line 1240
    .local v0, "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    .end local v0    # "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v7

    throw v1
.end method

.method public addUpdatedLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V
    .locals 8
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "filePathList"    # [Ljava/lang/String;

    .prologue
    .line 1246
    if-nez p1, :cond_0

    .line 1256
    :goto_0
    return-void

    .line 1249
    :cond_0
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "addUpdatedLanguage: "

    iget-object v3, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1250
    iget-object v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    monitor-enter v7

    .line 1251
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1252
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;

    sget-object v2, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->UPDATED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    sget-object v3, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->UPDATABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;-><init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;[Ljava/lang/String;Lcom/nuance/swype/connect/SDKDownloadManager;Lcom/nuance/swype/connect/SDKDownloadManager$1;)V

    .line 1254
    .local v0, "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    .end local v0    # "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v7

    throw v1
.end method

.method public getDownloadingLanguageList()Ljava/util/Map;
    .locals 2
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
    .line 422
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    monitor-enter v1

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getLanguageFromId(I)Lcom/nuance/swype/input/InputMethods$Language;
    .locals 5
    .param p1, "coreLanguageId"    # I

    .prologue
    .line 434
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->langLookup:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 435
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods;->getAllLanguages()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->langLookup:Ljava/util/Map;

    .line 436
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->langLookup:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 437
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;>;"
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->coreIdToLanguageNameMap:Landroid/util/SparseArray;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 440
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->langLookup:Ljava/util/Map;

    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->coreIdToLanguageNameMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/InputMethods$Language;

    return-object v2
.end method

.method public getSettingDownloadLanguageList()Ljava/util/Map;
    .locals 1
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
    .line 402
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->getSettingDownloadLanguageList(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSettingDownloadLanguageList(Z)Ljava/util/Map;
    .locals 5
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
    .line 406
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    monitor-enter v3

    .line 407
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 408
    .local v1, "localList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;>;"
    if-eqz p1, :cond_1

    .line 409
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 410
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 411
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 412
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getType()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    move-result-object v2

    sget-object v4, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->BUILTIN:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    if-ne v2, v4, :cond_0

    .line 413
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 418
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;>;>;"
    .end local v1    # "localList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 417
    .restart local v1    # "localList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method init()Z
    .locals 2

    .prologue
    .line 139
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/SDKDownloadManager$2;-><init>(Lcom/nuance/swype/connect/SDKDownloadManager;)V

    .line 159
    .local v0, "callback":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->registerLanguageListCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;)Z

    move-result v1

    .line 160
    return v1
.end method

.method public isALMUpdateAvailable(Ljava/lang/String;Ljava/util/List;Z)Z
    .locals 8
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
    .line 1179
    .local p2, "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    const/4 v4, 0x0

    .line 1180
    .local v4, "updateAvailable":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 1181
    .local v0, "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1183
    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    if-eqz v5, :cond_3

    .line 1185
    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->mFiles:Ljava/util/Set;

    if-nez v5, :cond_1

    .line 1186
    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/IMEApplication;->getAssetFileNames(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->mFiles:Ljava/util/Set;

    .line 1188
    :cond_1
    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->mFiles:Ljava/util/Set;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".mp3"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->mFiles:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1214
    .end local v0    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    :cond_2
    :goto_0
    return v4

    .line 1194
    .restart local v0    # "db":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    :cond_3
    if-eqz p3, :cond_5

    .line 1195
    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1197
    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    .line 1202
    :cond_5
    const/4 v1, 0x0

    .line 1203
    .local v1, "downloadedALM":Z
    new-instance v3, Ljava/io/File;

    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v3, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1204
    .local v3, "langFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1205
    const/4 v1, 0x1

    .line 1207
    :cond_6
    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v1, :cond_8

    :cond_7
    invoke-virtual {v0}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1209
    :cond_8
    const/4 v4, 0x1

    .line 1210
    goto :goto_0
.end method

.method public isLanguageAvailableForUpdate(Lcom/nuance/swype/input/InputMethods$Language;)Z
    .locals 10
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1128
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v3

    .line 1129
    .local v3, "languageId":I
    iget-boolean v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSetupComplete:Z

    if-nez v5, :cond_0

    move v5, v6

    .line 1175
    :goto_0
    return v5

    .line 1132
    :cond_0
    sget-object v5, Lcom/nuance/swype/connect/SDKDownloadManager;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 1134
    iget-object v8, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    monitor-enter v8

    .line 1135
    :try_start_0
    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v5

    sget-object v9, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->UPDATE_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-ne v5, v9, :cond_1

    .line 1137
    sget-object v5, Lcom/nuance/swype/connect/SDKDownloadManager;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 1138
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v7

    goto :goto_0

    .line 1140
    :cond_1
    monitor-exit v8

    .line 1143
    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1144
    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/nuance/swype/input/DatabaseConfig;->getOldLanguageIdAndFileMappingTable(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v5

    .line 1145
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1147
    .local v4, "ldbFile":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 1149
    sget-object v5, Lcom/nuance/swype/connect/SDKDownloadManager;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    move v5, v6

    .line 1150
    goto :goto_0

    .line 1140
    .end local v4    # "ldbFile":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v8

    throw v5

    .line 1153
    .restart local v4    # "ldbFile":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v5, v8}, Lcom/nuance/swype/input/DatabaseConfig;->getLanguageDBList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v5

    .line 1154
    iget-object v8, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1157
    .local v1, "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    invoke-virtual {p0, v4, v1, v6}, Lcom/nuance/swype/connect/SDKDownloadManager;->isALMUpdateAvailable(Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v0

    .line 1159
    .local v0, "almUpdateAvailable":Z
    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1162
    .local v2, "filePath":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 1163
    sget-object v5, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v7, "isLanguageAvailableForUpdate: "

    const-string v8, " is already ALM"

    invoke-virtual {v5, v7, v4, v8}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1164
    sget-object v5, Lcom/nuance/swype/connect/SDKDownloadManager;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    move v5, v6

    .line 1165
    goto :goto_0

    .line 1168
    :cond_3
    sget-object v5, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v8, "isLanguageAvailableForUpdate: filePath() "

    const-string v9, " added to baseline to ALM update list"

    invoke-virtual {v5, v8, v2, v9}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1170
    new-array v5, v7, [Ljava/lang/String;

    aput-object v2, v5, v6

    invoke-virtual {p0, p1, v5}, Lcom/nuance/swype/connect/SDKDownloadManager;->addBaseLineToALMUpdateLanguage(Lcom/nuance/swype/input/InputMethods$Language;[Ljava/lang/String;)V

    .line 1171
    sget-object v5, Lcom/nuance/swype/connect/SDKDownloadManager;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    move v5, v7

    .line 1172
    goto/16 :goto_0

    .line 1174
    .end local v0    # "almUpdateAvailable":Z
    .end local v1    # "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v4    # "ldbFile":Ljava/lang/String;
    :cond_4
    sget-object v5, Lcom/nuance/swype/connect/SDKDownloadManager;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    move v5, v6

    .line 1175
    goto/16 :goto_0
.end method

.method public isLanguageListAvailable()Z
    .locals 2

    .prologue
    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v1, "LANGUAGE"

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    .line 358
    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isLanguageListAvailable()Z
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 361
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLanguageSetupComplete()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSetupComplete:Z

    return v0
.end method

.method public languageCancel(IZ)Z
    .locals 7
    .param p1, "languageId"    # I
    .param p2, "removeNotification"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 265
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "languageCancel("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v1, v4, v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 267
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    monitor-enter v4

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .line 270
    .local v0, "downloadLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->allowedCancel()Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "languageCancel("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, ") -- ignoring cancel as we\'re installing currently"

    invoke-virtual {v1, v3, v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 272
    monitor-exit v4

    move v1, v2

    .line 295
    :goto_0
    return v1

    .line 274
    :cond_0
    if-eqz v0, :cond_1

    .line 275
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->CANCELED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v5}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    .line 276
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setProgress(I)V

    .line 279
    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_2

    .line 280
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :cond_2
    if-eqz v0, :cond_3

    .line 287
    :try_start_1
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v5, "LANGUAGE"

    invoke-virtual {v1, v5}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    .line 288
    invoke-interface {v1, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->cancelDownload(I)V
    :try_end_1
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v1

    .line 293
    :cond_3
    monitor-exit v4

    move v1, v2

    .line 295
    goto :goto_0

    .line 293
    .end local v0    # "downloadLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1
.end method

.method public languageDownload(I)V
    .locals 7
    .param p1, "languageId"    # I

    .prologue
    .line 216
    sget-object v3, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "languageDownload("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v3, v4, v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 218
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 219
    sget-object v3, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "trying to install unknown languageId"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 224
    const/4 v2, 0x0

    .line 226
    .local v2, "languageService":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    :try_start_0
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v4, "LANGUAGE"

    invoke-virtual {v3, v4}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    move-object v2, v0
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_1
    if-eqz v2, :cond_0

    .line 235
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;

    .line 236
    invoke-static {v3, v2}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;->access$300(Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;)V

    .line 238
    .end local v2    # "languageService":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v1

    .line 239
    .local v1, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v1, :cond_3

    .line 240
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lcom/nuance/swype/input/IME;->checkLanguageUpdates(IZ)V

    .line 242
    :cond_3
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadInternal(I)V

    goto :goto_0

    .line 227
    .end local v1    # "ime":Lcom/nuance/swype/input/IME;
    .restart local v2    # "languageService":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_1
.end method

.method languageSetupComplete()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSetupComplete:Z

    .line 165
    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageListAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->listUpdated()V

    .line 168
    :cond_0
    return-void
.end method

.method public languageUninstall(I)Z
    .locals 13
    .param p1, "languageId"    # I

    .prologue
    const/4 v8, 0x0

    .line 299
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/SDKDownloadManager;->getLanguageFromId(I)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v3

    .line 300
    .local v3, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    if-nez v3, :cond_0

    .line 301
    sget-object v9, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v10, "Failed to uninstall language "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, ", language not found."

    invoke-virtual {v9, v10, v11, v12}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 348
    :goto_0
    return v8

    .line 305
    :cond_0
    iget-object v9, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 306
    sget-object v9, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not in the download setting list"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 310
    :cond_1
    new-instance v4, Lcom/nuance/swype/connect/LanguageInstall;

    iget-object v9, v3, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    iget-object v10, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    invoke-direct {v4, v9, v10}, Lcom/nuance/swype/connect/LanguageInstall;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 313
    .local v4, "langInstaller":Lcom/nuance/swype/connect/LanguageInstall;
    :try_start_0
    iget-object v9, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v10, "LANGUAGE"

    invoke-virtual {v9, v10}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v5

    check-cast v5, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    .line 314
    .local v5, "languageService":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    iget-object v9, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;

    .line 317
    .local v0, "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;
    iget-object v10, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :try_start_1
    iget-object v9, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 319
    .local v2, "isAlreadyInDownloadingList":Z
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    if-nez v2, :cond_2

    .line 322
    :try_start_2
    invoke-static {v0, v5}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;->access$300(Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;)V

    .line 325
    :cond_2
    invoke-virtual {v4}, Lcom/nuance/swype/connect/LanguageInstall;->uninstall()V

    .line 326
    invoke-interface {v5, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageUninstalled(I)V

    .line 330
    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;->getOriginalStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v9

    sget-object v10, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->UPDATED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-ne v9, v10, :cond_3

    .line 331
    sget-object v6, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->UPDATE_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .line 332
    .local v6, "newStatus":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;
    sget-object v7, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->UPDATABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    .line 338
    .local v7, "newType":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;
    :goto_1
    invoke-virtual {v0, v6}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;->changeOriginalStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;)V

    .line 339
    invoke-virtual {v0, v7}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;->setType(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;)V

    .line 341
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;->setProgress(I)V

    .line 342
    sget-object v9, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v10, "uninstall language "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, " complete"

    invoke-virtual {v9, v10, v11, v12}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 343
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 319
    .end local v2    # "isAlreadyInDownloadingList":Z
    .end local v6    # "newStatus":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;
    .end local v7    # "newType":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 344
    .end local v0    # "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;
    .end local v5    # "languageService":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    :catch_0
    move-exception v1

    .line 345
    .local v1, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Exception uninstalling: lang="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 334
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;
    .restart local v2    # "isAlreadyInDownloadingList":Z
    .restart local v5    # "languageService":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    :cond_3
    :try_start_3
    sget-object v6, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->DOWNLOAD_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .line 335
    .restart local v6    # "newStatus":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;
    sget-object v7, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .restart local v7    # "newType":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;
    goto :goto_1
.end method

.method public postLanguageUpdateNotification(Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 10
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    const/4 v9, 0x1

    .line 1086
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/connect/Connect;->isLicensed()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->isLVLLicenseValid()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1121
    :cond_0
    :goto_0
    return-void

    .line 1089
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v1

    .line 1091
    .local v1, "languageId":I
    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v5

    sget-object v6, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->UPDATE_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-ne v5, v6, :cond_0

    .line 1094
    sget-object v5, Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v6, "postLanguageUpdateNotification: "

    iget-object v7, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1097
    new-instance v2, Lcom/nuance/android/compat/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 1099
    .local v2, "notification":Lcom/nuance/android/compat/NotificationCompat$Builder;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_2

    .line 1102
    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->getPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/PendingIntent;->cancel()V

    .line 1105
    :cond_2
    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1106
    .local v3, "res":Landroid/content/res/Resources;
    sget v5, Lcom/nuance/swype/input/R$string;->notification_language_update_title:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1110
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$string;->notification_language_update:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$drawable;->swype_icon:I

    invoke-virtual {v5, v6}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setSmallIcon(I)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v5

    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->getPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 1115
    iget-object v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1116
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 1117
    .local v0, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v0, :cond_0

    .line 1118
    invoke-virtual {v0, v1, v9}, Lcom/nuance/swype/input/IME;->checkLanguageUpdates(IZ)V

    goto/16 :goto_0
.end method

.method public registerDataCallback(Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    .prologue
    .line 930
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->callbackList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 931
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->callbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->callbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 934
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerLanguageListCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;

    .prologue
    .line 966
    const/4 v0, 0x0

    .line 968
    .local v0, "success":Z
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v2, "LANGUAGE"

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    .line 969
    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;Z)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    const/4 v0, 0x1

    .line 973
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public removeLanguageFromList(I)V
    .locals 3
    .param p1, "languageId"    # I

    .prologue
    .line 1301
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    monitor-enter v1

    .line 1302
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->languageSettingList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method statusFromType(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;)Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;
    .locals 1
    .param p1, "type"    # Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    .prologue
    .line 985
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    if-ne p1, v0, :cond_0

    .line 986
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->DOWNLOAD_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .line 993
    :goto_0
    return-object v0

    .line 989
    :cond_0
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->UPDATABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    if-ne p1, v0, :cond_1

    .line 990
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->UPDATE_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    goto :goto_0

    .line 993
    :cond_1
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->INSTALLED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    goto :goto_0
.end method

.method public unregisterDataCallback(Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    .prologue
    .line 938
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->callbackList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 939
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->callbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->callbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 942
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterLanguageListCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;

    .prologue
    .line 978
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v1, "LANGUAGE"

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    .line 979
    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->unregisterCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
