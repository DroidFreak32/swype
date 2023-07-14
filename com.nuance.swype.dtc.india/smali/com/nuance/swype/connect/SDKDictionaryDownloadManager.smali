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
    .line 48
    const-string/jumbo v0, "SDKDictionaryDownloadManager"

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
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->refreshLanguageRunnables:Landroid/util/SparseArray;

    .line 289
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->context:Landroid/content/Context;

    .line 290
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->notificationManager:Landroid/app/NotificationManager;

    .line 291
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->refreshLanguageRunnables:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public dictionaryCancel(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)Z
    .locals 8
    .param p1, "dictionary"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .prologue
    const/4 v7, 0x0

    .line 332
    if-nez p1, :cond_0

    .line 333
    sget-object v3, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v4, "dictionaryCancel dictionary is null"

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 353
    :goto_0
    return v7

    .line 336
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    monitor-enter v4

    .line 337
    :try_start_0
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;

    .line 338
    .local v1, "downloadCallback":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    if-eqz v1, :cond_1

    .line 341
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->context:Landroid/content/Context;

    .line 342
    invoke-static {v3}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect;->getChineseDictionaryDownloadService()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 343
    .local v0, "chineseService":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    if-eqz v0, :cond_1

    .line 345
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->cancelDownload(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V
    :try_end_1
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    .end local v0    # "chineseService":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    .end local v1    # "downloadCallback":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 346
    .restart local v0    # "chineseService":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    .restart local v1    # "downloadCallback":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;
    :catch_0
    move-exception v2

    .line 347
    .local v2, "e":Lcom/nuance/swypeconnect/ac/ACException;
    :try_start_3
    sget-object v3, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Error canceling chinese dictionary: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public dictionaryDownload(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V
    .locals 9
    .param p1, "dictionary"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 303
    if-nez p1, :cond_0

    .line 304
    sget-object v3, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v4, "dictionaryDownload null"

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 328
    :goto_0
    return-void

    .line 307
    :cond_0
    sget-object v3, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "dictionaryDownload("

    aput-object v5, v4, v6

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-string/jumbo v5, ")"

    aput-object v5, v4, v8

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 308
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    monitor-enter v4

    .line 309
    :try_start_0
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 310
    sget-object v3, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "dictionaryDownload("

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, ") adding download to list"

    aput-object v7, v5, v6

    invoke-interface {v3, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 311
    new-instance v1, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;

    invoke-direct {v1, p0}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;-><init>(Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;)V

    .line 312
    .local v1, "dictionaryDownloadCallback":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;
    invoke-virtual {v1, p1}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->setDictionary(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V

    .line 314
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->context:Landroid/content/Context;

    .line 315
    invoke-static {v3}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect;->getChineseDictionaryDownloadService()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 316
    .local v0, "chineseService":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    if-eqz v0, :cond_1

    .line 318
    :try_start_1
    invoke-virtual {v0, p1, v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->downloadDictionary(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;)V

    .line 319
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    .end local v0    # "chineseService":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    .end local v1    # "dictionaryDownloadCallback":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 320
    .restart local v0    # "chineseService":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    .restart local v1    # "dictionaryDownloadCallback":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;
    :catch_0
    move-exception v2

    .line 321
    .local v2, "e":Lcom/nuance/swypeconnect/ac/ACException;
    :try_start_3
    sget-object v3, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Error downloading chinese dictionary: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1

    .line 325
    .end local v0    # "chineseService":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    .end local v1    # "dictionaryDownloadCallback":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;
    .end local v2    # "e":Lcom/nuance/swypeconnect/ac/ACException;
    :cond_2
    sget-object v3, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "dictionaryDownload("

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, ") dictionary already in download list, ignoring."

    aput-object v7, v5, v6

    invoke-interface {v3, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public dictionaryDownload(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;Lcom/nuance/swype/connect/SDKDownloadStatusCallback;)V
    .locals 1
    .param p1, "dictionary"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    .param p2, "statusCallback"    # Lcom/nuance/swype/connect/SDKDownloadStatusCallback;

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownload(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V

    .line 299
    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->registerDictionaryDownloadListener(Ljava/lang/String;Lcom/nuance/swype/connect/SDKDownloadStatusCallback;)Z

    .line 300
    return-void
.end method

.method public dictionaryInstallCompleted(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V
    .locals 4
    .param p1, "dictionary"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .prologue
    .line 357
    if-nez p1, :cond_0

    .line 358
    sget-object v1, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "dictionaryInstallCompleted dictionary is null"

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 367
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;

    .line 362
    .local v0, "callback":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;
    if-eqz v0, :cond_1

    .line 363
    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->installed()V

    .line 365
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    monitor-enter v2

    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dictionaryInstallFailed(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V
    .locals 3
    .param p1, "dictionary"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .prologue
    .line 371
    if-nez p1, :cond_0

    .line 372
    sget-object v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "dictionaryInstallFailed dictionary is null"

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    monitor-enter v1

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 294
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
    .line 403
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    monitor-enter v3

    .line 405
    :try_start_0
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 406
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 408
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    sget-object v2, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "getDictionaryDownloadList count="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 411
    return-object v1
.end method

.method public registerDictionaryDownloadListener(Ljava/lang/String;Lcom/nuance/swype/connect/SDKDownloadStatusCallback;)Z
    .locals 3
    .param p1, "dictionaryKey"    # Ljava/lang/String;
    .param p2, "statusCallback"    # Lcom/nuance/swype/connect/SDKDownloadStatusCallback;

    .prologue
    .line 381
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    monitor-enter v2

    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;

    .line 383
    .local v0, "dictionaryDownloadCallback":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;
    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0, p2}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->addListener(Lcom/nuance/swype/connect/SDKDownloadStatusCallback;)V

    .line 385
    const/4 v1, 0x1

    monitor-exit v2

    .line 387
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 388
    .end local v0    # "dictionaryDownloadCallback":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerDictionaryListCallback(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;Z)Z
    .locals 3
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;
    .param p2, "sendNow"    # Z

    .prologue
    .line 462
    const/4 v1, 0x0

    .line 463
    .local v1, "success":Z
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->context:Landroid/content/Context;

    .line 464
    invoke-static {v2}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect;->getChineseDictionaryDownloadService()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    move-result-object v0

    .line 465
    .local v0, "chineseService":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;Z)V

    .line 467
    const/4 v1, 0x1

    .line 469
    :cond_0
    return v1
.end method

.method public unregisterDictionaryDownloadListener(Ljava/lang/String;Lcom/nuance/swype/connect/SDKDownloadStatusCallback;)Z
    .locals 3
    .param p1, "dictionaryKey"    # Ljava/lang/String;
    .param p2, "statusCallback"    # Lcom/nuance/swype/connect/SDKDownloadStatusCallback;

    .prologue
    .line 392
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    monitor-enter v2

    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownloadList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;

    .line 394
    .local v0, "dictionaryDownloadCallback":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;
    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0, p2}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;->removeListener(Lcom/nuance/swype/connect/SDKDownloadStatusCallback;)V

    .line 396
    const/4 v1, 0x1

    monitor-exit v2

    .line 398
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 399
    .end local v0    # "dictionaryDownloadCallback":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$SDKDictionaryDownloadFileCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterDictionaryListCallback(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;

    .prologue
    .line 473
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->context:Landroid/content/Context;

    .line 474
    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getChineseDictionaryDownloadService()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    move-result-object v0

    .line 475
    .local v0, "chineseService":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->unregisterCallback(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;)V

    .line 478
    :cond_0
    return-void
.end method

.method upgrade()V
    .locals 17

    .prologue
    .line 481
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->context:Landroid/content/Context;

    .line 482
    invoke-static {v11}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nuance/swype/connect/Connect;->getChineseDictionaryDownloadService()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    move-result-object v4

    .line 483
    .local v4, "chineseService":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    if-nez v4, :cond_1

    .line 484
    sget-object v11, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v12, "Failed to upgrade chinese dictionaries: service not available"

    invoke-interface {v11, v12}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 525
    :cond_0
    return-void

    .line 488
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v10, "totalDictionaries":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 490
    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getDownloadedDictionaries()Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 491
    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getUpdatableDictionaries()Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 493
    new-instance v3, Lcom/nuance/swype/input/CategoryDBList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->context:Landroid/content/Context;

    invoke-direct {v3, v11}, Lcom/nuance/swype/input/CategoryDBList;-><init>(Landroid/content/Context;)V

    .line 494
    .local v3, "cdbList":Lcom/nuance/swype/input/CategoryDBList;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->context:Landroid/content/Context;

    invoke-static {v11}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v8

    .line 495
    .local v8, "im":Lcom/nuance/swype/input/InputMethods;
    invoke-virtual {v3}, Lcom/nuance/swype/input/CategoryDBList;->getAvailableCatDbList()Ljava/util/Map;

    move-result-object v11

    .line 496
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 497
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 498
    .local v2, "catInfo":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lcom/nuance/swype/input/CategoryDBList;->getFileId(Ljava/lang/String;)I

    move-result v1

    .line 499
    .local v1, "catId":I
    const/4 v7, 0x0

    .line 500
    .local v7, "found":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .line 501
    .local v5, "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    invoke-virtual {v5}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v14

    if-ne v14, v1, :cond_4

    .line 502
    sget-object v11, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "Upgrade Dictionaries: Found="

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v5, v14, v15

    invoke-interface {v11, v14}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 503
    move-object v7, v5

    .line 508
    .end local v5    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    :cond_5
    if-eqz v7, :cond_6

    .line 510
    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 511
    sget-object v11, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "Upgrade Dictionaries: Redownloading="

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v7, v14, v15

    invoke-interface {v11, v14}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 512
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownload(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V

    goto :goto_0

    .line 515
    :cond_6
    sget-object v11, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "Upgrade Dictionaries: Not found.  Removing="

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v2, v14, v15

    invoke-interface {v11, v14}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 517
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/nuance/swype/input/InputMethods;->findLanguageFromName(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v9

    .line 519
    .local v9, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v3, v2}, Lcom/nuance/swype/input/CategoryDBList;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 520
    invoke-virtual {v3, v2}, Lcom/nuance/swype/input/CategoryDBList;->getFileId(Ljava/lang/String;)I

    move-result v14

    iget v15, v9, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    .line 518
    invoke-virtual {v3, v11, v14, v15}, Lcom/nuance/swype/input/CategoryDBList;->uninstallDownloadedCategoryDB(Ljava/lang/String;II)Z

    goto/16 :goto_0
.end method
