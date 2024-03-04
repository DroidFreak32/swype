.class public Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;
.super Ljava/lang/Object;
.source "SDKDictionaryDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$InstallTask;,
        Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;,
        Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$RefreshLanguageRunnable;
    }
.end annotation


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private context:Landroid/content/Context;

.field private final dictionaryDownloadList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;",
            ">;"
        }
    .end annotation
.end field

.field notificationManager:Landroid/app/NotificationManager;

.field private final refreshLanguageRunnables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$RefreshLanguageRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "SDKDictionaryDownloadManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swypeconnect/ac/ACManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "acManager"    # Lcom/nuance/swypeconnect/ac/ACManager;

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->refreshLanguageRunnables:Landroid/util/SparseArray;

    .line 281
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->context:Landroid/content/Context;

    .line 282
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    .line 283
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->refreshLanguageRunnables:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public dictionaryCancel(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)Z
    .locals 8
    .param p1, "dictionary"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .prologue
    const/4 v7, 0x0

    .line 324
    if-nez p1, :cond_0

    .line 325
    sget-object v3, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "dictionaryCancel dictionary is null"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 345
    :goto_0
    return v7

    .line 328
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    monitor-enter v4

    .line 329
    :try_start_0
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;

    .line 330
    .local v1, "downloadCallback":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    if-eqz v1, :cond_1

    .line 333
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect;->getChineseDictionaryDownloadService()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 335
    .local v0, "chineseService":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    if-eqz v0, :cond_1

    .line 337
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->cancelDownload(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V
    :try_end_1
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    .end local v0    # "chineseService":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v1    # "downloadCallback":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 338
    .restart local v0    # "chineseService":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    .restart local v1    # "downloadCallback":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;
    :catch_0
    move-exception v2

    .line 339
    .local v2, "e":Lcom/nuance/swypeconnect/ac/ACException;
    :try_start_3
    sget-object v3, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error canceling chinese dictionary: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public dictionaryDownload(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V
    .locals 7
    .param p1, "dictionary"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .prologue
    .line 295
    if-nez p1, :cond_0

    .line 296
    sget-object v3, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "dictionaryDownload null"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 320
    :goto_0
    return-void

    .line 299
    :cond_0
    sget-object v3, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "dictionaryDownload("

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v3, v4, v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 300
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    monitor-enter v4

    .line 301
    :try_start_0
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 302
    sget-object v3, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "dictionaryDownload("

    const-string v6, ") adding download to list"

    invoke-virtual {v3, v5, p1, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 303
    new-instance v1, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;

    invoke-direct {v1, p0}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;-><init>(Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;)V

    .line 304
    .local v1, "dictionaryDownloadCallback":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;
    invoke-virtual {v1, p1}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->setDictionary(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V

    .line 306
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect;->getChineseDictionaryDownloadService()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 308
    .local v0, "chineseService":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    if-eqz v0, :cond_1

    .line 310
    :try_start_1
    invoke-virtual {v0, p1, v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->downloadDictionary(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;)V

    .line 311
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    .end local v0    # "chineseService":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    .end local v1    # "dictionaryDownloadCallback":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 312
    .restart local v0    # "chineseService":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    .restart local v1    # "dictionaryDownloadCallback":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;
    :catch_0
    move-exception v2

    .line 313
    .local v2, "e":Lcom/nuance/swypeconnect/ac/ACException;
    :try_start_3
    sget-object v3, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error downloading chinese dictionary: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1

    .line 317
    .end local v0    # "chineseService":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    .end local v1    # "dictionaryDownloadCallback":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;
    .end local v2    # "e":Lcom/nuance/swypeconnect/ac/ACException;
    :cond_2
    sget-object v3, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "dictionaryDownload("

    const-string v6, ") dictionary already in download list, ignoring."

    invoke-virtual {v3, v5, p1, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public dictionaryDownload(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;Lcom/nuance/swype/connect/SDKDownloadStatusCallback;)V
    .locals 1
    .param p1, "dictionary"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    .param p2, "statusCallback"    # Lcom/nuance/swype/connect/SDKDownloadStatusCallback;

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownload(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V

    .line 291
    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->registerDictionaryDownloadListener(Ljava/lang/String;Lcom/nuance/swype/connect/SDKDownloadStatusCallback;)Z

    .line 292
    return-void
.end method

.method public dictionaryInstallCompleted(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V
    .locals 4
    .param p1, "dictionary"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 350
    sget-object v1, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "dictionaryInstallCompleted dictionary is null"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 359
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;

    .line 354
    .local v0, "callback":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;
    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->installed()V

    .line 357
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    monitor-enter v2

    .line 358
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public dictionaryInstallFailed(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V
    .locals 3
    .param p1, "dictionary"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .prologue
    .line 363
    if-nez p1, :cond_0

    .line 364
    sget-object v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "dictionaryInstallFailed dictionary is null"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    monitor-enter v1

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDictionaryDownloadList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    monitor-enter v4

    .line 397
    :try_start_0
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 398
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 400
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    sget-object v3, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "getDictionaryDownloadList count="

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 403
    return-object v2
.end method

.method public registerDictionaryDownloadListener(Ljava/lang/String;Lcom/nuance/swype/connect/SDKDownloadStatusCallback;)Z
    .locals 3
    .param p1, "dictionaryKey"    # Ljava/lang/String;
    .param p2, "statusCallback"    # Lcom/nuance/swype/connect/SDKDownloadStatusCallback;

    .prologue
    .line 373
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    monitor-enter v2

    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;

    .line 375
    .local v0, "dictionaryDownloadCallback":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;
    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0, p2}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->addListener(Lcom/nuance/swype/connect/SDKDownloadStatusCallback;)V

    .line 377
    const/4 v1, 0x1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 380
    .end local v0    # "dictionaryDownloadCallback":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerDictionaryListCallback(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;Z)Z
    .locals 3
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;
    .param p2, "sendNow"    # Z

    .prologue
    .line 454
    const/4 v1, 0x0

    .line 455
    .local v1, "success":Z
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect;->getChineseDictionaryDownloadService()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    move-result-object v0

    .line 457
    .local v0, "chineseService":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;Z)V

    .line 459
    const/4 v1, 0x1

    .line 461
    :cond_0
    return v1
.end method

.method public unregisterDictionaryDownloadListener(Ljava/lang/String;Lcom/nuance/swype/connect/SDKDownloadStatusCallback;)Z
    .locals 3
    .param p1, "dictionaryKey"    # Ljava/lang/String;
    .param p2, "statusCallback"    # Lcom/nuance/swype/connect/SDKDownloadStatusCallback;

    .prologue
    .line 384
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    monitor-enter v2

    .line 385
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;

    .line 386
    .local v0, "dictionaryDownloadCallback":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;
    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0, p2}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->removeListener(Lcom/nuance/swype/connect/SDKDownloadStatusCallback;)V

    .line 388
    const/4 v1, 0x1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 391
    .end local v0    # "dictionaryDownloadCallback":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public unregisterDictionaryListCallback(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;

    .prologue
    .line 465
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getChineseDictionaryDownloadService()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    move-result-object v0

    .line 467
    .local v0, "chineseService":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->unregisterCallback(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;)V

    .line 470
    :cond_0
    return-void
.end method

.method upgrade()V
    .locals 17

    .prologue
    .line 473
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nuance/swype/connect/Connect;->getChineseDictionaryDownloadService()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    move-result-object v4

    .line 475
    .local v4, "chineseService":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    if-nez v4, :cond_1

    .line 476
    sget-object v14, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v15, "Failed to upgrade chinese dictionaries: service not available"

    invoke-virtual {v14, v15}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 517
    :cond_0
    return-void

    .line 480
    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v13, "totalDictionaries":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 482
    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getDownloadedDictionaries()Ljava/util/List;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 483
    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getUpdatableDictionaries()Ljava/util/List;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 485
    new-instance v3, Lcom/nuance/swype/input/CategoryDBList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->context:Landroid/content/Context;

    invoke-direct {v3, v14}, Lcom/nuance/swype/input/CategoryDBList;-><init>(Landroid/content/Context;)V

    .line 486
    .local v3, "cdbList":Lcom/nuance/swype/input/CategoryDBList;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v11

    .line 487
    .local v11, "im":Lcom/nuance/swype/input/InputMethods;
    invoke-virtual {v3}, Lcom/nuance/swype/input/CategoryDBList;->getAvailableCatDbList()Ljava/util/Map;

    move-result-object v14

    .line 488
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 489
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 490
    .local v2, "catInfo":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lcom/nuance/swype/input/CategoryDBList;->getFileId(Ljava/lang/String;)I

    move-result v1

    .line 491
    .local v1, "catId":I
    const/4 v7, 0x0

    .line 492
    .local v7, "found":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .line 493
    .local v5, "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    invoke-virtual {v5}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v14

    if-ne v14, v1, :cond_4

    .line 494
    sget-object v14, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v15, "Upgrade Dictionaries: Found="

    invoke-virtual {v14, v15, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 495
    move-object v7, v5

    .line 500
    .end local v5    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    :cond_5
    if-eqz v7, :cond_6

    .line 502
    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 503
    sget-object v14, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v15, "Upgrade Dictionaries: Redownloading="

    invoke-virtual {v14, v15, v7}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 504
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownload(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V

    goto :goto_0

    .line 507
    :cond_6
    sget-object v14, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v15, "Upgrade Dictionaries: Not found.  Removing="

    invoke-virtual {v14, v15, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 509
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v11, v14}, Lcom/nuance/swype/input/InputMethods;->findLanguageFromName(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v12

    .line 510
    .local v12, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v3, v2}, Lcom/nuance/swype/input/CategoryDBList;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v2}, Lcom/nuance/swype/input/CategoryDBList;->getFileId(Ljava/lang/String;)I

    move-result v15

    iget v0, v12, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v3, v14, v15, v0}, Lcom/nuance/swype/input/CategoryDBList;->uninstallDownloadedCategoryDB(Ljava/lang/String;II)Z

    goto :goto_0
.end method
