.class Lcom/localytics/android/CreativeManager;
.super Ljava/lang/Object;
.source "CreativeManager.java"

# interfaces
.implements Lcom/localytics/android/ICreativeDownloadTaskCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;,
        Lcom/localytics/android/CreativeManager$LastDownloadedCallback;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x5

.field private static final KEEP_ALIVE_SECS:J = 0xaL

.field private static final MAX_POOL_SIZE:I = 0x5


# instance fields
.field private mBlockingQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mCreativeDownloadTaskFactory:Lcom/localytics/android/CreativeDownloadTaskFactory;

.field private mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mFirstDownloadedCallback:Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;

.field private mHandler:Landroid/os/Handler;

.field private mLastDownloadedCallback:Lcom/localytics/android/CreativeManager$LastDownloadedCallback;

.field protected mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

.field private mNormalDownloads:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/localytics/android/ICreativeDownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mPriorityDownloads:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/localytics/android/ICreativeDownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mSequence:I


# direct methods
.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Handler;)V
    .registers 4
    .param p1, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 51
    new-instance v0, Lcom/localytics/android/CreativeDownloadTaskFactory;

    invoke-direct {v0}, Lcom/localytics/android/CreativeDownloadTaskFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/localytics/android/CreativeManager;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Handler;Lcom/localytics/android/CreativeDownloadTaskFactory;)V

    .line 52
    return-void
.end method

.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Handler;Lcom/localytics/android/CreativeDownloadTaskFactory;)V
    .registers 13
    .param p1, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "creativeDownloadTaskFactory"    # Lcom/localytics/android/CreativeDownloadTaskFactory;

    .prologue
    const/4 v2, 0x5

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/localytics/android/CreativeManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    .line 57
    iput-object p2, p0, Lcom/localytics/android/CreativeManager;->mHandler:Landroid/os/Handler;

    .line 58
    iput-object p3, p0, Lcom/localytics/android/CreativeManager;->mCreativeDownloadTaskFactory:Lcom/localytics/android/CreativeDownloadTaskFactory;

    .line 59
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/CreativeManager;->mBlockingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 60
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/localytics/android/CreativeManager;->mBlockingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v8, Lcom/localytics/android/CreativeManager$1;

    invoke-direct {v8, p0}, Lcom/localytics/android/CreativeManager$1;-><init>(Lcom/localytics/android/CreativeManager;)V

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/localytics/android/CreativeManager;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 78
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/CreativeManager;->mNormalDownloads:Landroid/util/SparseArray;

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/CreativeManager;->mPriorityDownloads:Landroid/util/SparseArray;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/localytics/android/CreativeManager;Lcom/localytics/android/ICreativeDownloadTask;)V
    .registers 2
    .param p0, "x0"    # Lcom/localytics/android/CreativeManager;
    .param p1, "x1"    # Lcom/localytics/android/ICreativeDownloadTask;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/localytics/android/CreativeManager;->postDownloadCleanup(Lcom/localytics/android/ICreativeDownloadTask;)V

    return-void
.end method

.method protected static createDir(Ljava/lang/String;)Z
    .registers 6
    .param p0, "absolutePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 355
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 358
    :cond_13
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 360
    const-string/jumbo v3, "Could not create the directory %s for saving the decompressed file."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 365
    :goto_2b
    return v1

    :cond_2c
    move v1, v2

    goto :goto_2b
.end method

.method static getInAppLocalFileURL(JZLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;
    .registers 10
    .param p0, "ruleId"    # J
    .param p2, "isZipped"    # Z
    .param p3, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {p3}, Lcom/localytics/android/CreativeManager;->getZipFileDirPath(Lcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    if-eqz p2, :cond_2c

    .line 238
    const-string/jumbo v1, "amp_rule_%d.zip"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :goto_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2b
    return-object v1

    .line 242
    :cond_2c
    const-string/jumbo v1, "marketing_rule_%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-static {v1}, Lcom/localytics/android/CreativeManager;->createDir(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 247
    const/4 v1, 0x0

    goto :goto_2b

    .line 250
    :cond_4a
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string/jumbo v1, "index.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27
.end method

.method static getInAppLocalHtmlLocation(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;
    .registers 5
    .param p0, "ruleId"    # J
    .param p2, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, p2}, Lcom/localytics/android/CreativeManager;->getInAppUnzipFileDirPath(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "index.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getInAppUnzipFileDirPath(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;
    .registers 9
    .param p0, "ruleId"    # J
    .param p2, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;

    .prologue
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {p2}, Lcom/localytics/android/CreativeManager;->getZipFileDirPath(Lcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string/jumbo v2, "marketing_rule_%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Lcom/localytics/android/CreativeManager;->createDir(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .end local v1    # "path":Ljava/lang/String;
    :goto_2f
    return-object v1

    .restart local v1    # "path":Ljava/lang/String;
    :cond_30
    const/4 v1, 0x0

    goto :goto_2f
.end method

.method static getInboxLocalFileURL(JZLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;
    .registers 10
    .param p0, "inboxId"    # J
    .param p2, "isZipped"    # Z
    .param p3, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {p3}, Lcom/localytics/android/CreativeManager;->getZipFileDirPath(Lcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    if-eqz p2, :cond_2c

    .line 271
    const-string/jumbo v1, "inbox_creative_assets_%d.zip"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :goto_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2b
    return-object v1

    .line 275
    :cond_2c
    const-string/jumbo v1, "inbox_creative_assets_%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-static {v1}, Lcom/localytics/android/CreativeManager;->createDir(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 280
    const/4 v1, 0x0

    goto :goto_2b

    .line 283
    :cond_4a
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string/jumbo v1, "index.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27
.end method

.method static getInboxLocalHtmlLocation(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;
    .registers 5
    .param p0, "inboxId"    # J
    .param p2, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;

    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, p2}, Lcom/localytics/android/CreativeManager;->getInboxUnzipFileDirPath(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "index.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getInboxUnzipFileDirPath(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;
    .registers 9
    .param p0, "inboxRowId"    # J
    .param p2, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;

    .prologue
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {p2}, Lcom/localytics/android/CreativeManager;->getZipFileDirPath(Lcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const-string/jumbo v2, "inbox_creative_assets_%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Lcom/localytics/android/CreativeManager;->createDir(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .end local v1    # "path":Ljava/lang/String;
    :goto_2f
    return-object v1

    .restart local v1    # "path":Ljava/lang/String;
    :cond_30
    const/4 v1, 0x0

    goto :goto_2f
.end method

.method static getOldZipFileDirPath(Lcom/localytics/android/LocalyticsDao;)Ljava/lang/String;
    .registers 3
    .param p0, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string/jumbo v1, ".localytics"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-interface {p0}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getZipFileDirPath(Lcom/localytics/android/LocalyticsDao;)Ljava/lang/String;
    .registers 3
    .param p0, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lcom/localytics/android/LocalyticsDao;->isUsingNewCreativeLocation()Z

    move-result v1

    if-nez v1, :cond_10

    .line 316
    invoke-static {p0}, Lcom/localytics/android/CreativeManager;->getOldZipFileDirPath(Lcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v1

    .line 328
    :goto_f
    return-object v1

    .line 320
    :cond_10
    invoke-interface {p0}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string/jumbo v1, ".localytics"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-interface {p0}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_f
.end method

.method private postDownloadCleanup(Lcom/localytics/android/ICreativeDownloadTask;)V
    .registers 6
    .param p1, "task"    # Lcom/localytics/android/ICreativeDownloadTask;

    .prologue
    const/4 v3, 0x0

    .line 202
    invoke-interface {p1}, Lcom/localytics/android/ICreativeDownloadTask;->getCampaign()Lcom/localytics/android/MarketingMessage;

    move-result-object v1

    const-string/jumbo v2, "campaign_id"

    invoke-static {v1, v2}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    .line 203
    .local v0, "campaignId":I
    iget-object v1, p0, Lcom/localytics/android/CreativeManager;->mNormalDownloads:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 205
    iget-object v1, p0, Lcom/localytics/android/CreativeManager;->mPriorityDownloads:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 207
    iget-object v1, p0, Lcom/localytics/android/CreativeManager;->mPriorityDownloads:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 208
    iget-object v1, p0, Lcom/localytics/android/CreativeManager;->mFirstDownloadedCallback:Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;

    if-eqz v1, :cond_29

    .line 210
    iget-object v1, p0, Lcom/localytics/android/CreativeManager;->mFirstDownloadedCallback:Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;

    invoke-interface {v1}, Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;->onFirstDownloaded()V

    .line 211
    iput-object v3, p0, Lcom/localytics/android/CreativeManager;->mFirstDownloadedCallback:Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;

    .line 215
    :cond_29
    iget-object v1, p0, Lcom/localytics/android/CreativeManager;->mNormalDownloads:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, p0, Lcom/localytics/android/CreativeManager;->mPriorityDownloads:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, p0, Lcom/localytics/android/CreativeManager;->mLastDownloadedCallback:Lcom/localytics/android/CreativeManager$LastDownloadedCallback;

    if-eqz v1, :cond_44

    .line 217
    iget-object v1, p0, Lcom/localytics/android/CreativeManager;->mLastDownloadedCallback:Lcom/localytics/android/CreativeManager$LastDownloadedCallback;

    invoke-interface {v1}, Lcom/localytics/android/CreativeManager$LastDownloadedCallback;->onLastDownloaded()V

    .line 218
    iput-object v3, p0, Lcom/localytics/android/CreativeManager;->mLastDownloadedCallback:Lcom/localytics/android/CreativeManager$LastDownloadedCallback;

    .line 222
    :cond_44
    return-void
.end method


# virtual methods
.method downloadCreatives(Ljava/util/List;Lcom/localytics/android/CreativeManager$LastDownloadedCallback;)V
    .registers 12
    .param p2, "lastDownloadedCallback"    # Lcom/localytics/android/CreativeManager$LastDownloadedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;",
            "Lcom/localytics/android/CreativeManager$LastDownloadedCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "campaigns":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    iput-object p2, p0, Lcom/localytics/android/CreativeManager;->mLastDownloadedCallback:Lcom/localytics/android/CreativeManager$LastDownloadedCallback;

    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/localytics/android/MarketingMessage;

    .line 88
    .local v1, "campaign":Lcom/localytics/android/MarketingMessage;
    const-string/jumbo v0, "campaign_id"

    invoke-static {v1, v0}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v6

    .line 89
    .local v6, "campaignId":I
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mPriorityDownloads:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mNormalDownloads:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 91
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mCreativeDownloadTaskFactory:Lcom/localytics/android/CreativeDownloadTaskFactory;

    sget-object v2, Lcom/localytics/android/ICreativeDownloadTask$Priority;->NORMAL:Lcom/localytics/android/ICreativeDownloadTask$Priority;

    iget v3, p0, Lcom/localytics/android/CreativeManager;->mSequence:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/localytics/android/CreativeManager;->mSequence:I

    iget-object v4, p0, Lcom/localytics/android/CreativeManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/CreativeDownloadTaskFactory;->creativeDownloadTask(Lcom/localytics/android/MarketingMessage;Lcom/localytics/android/ICreativeDownloadTask$Priority;ILcom/localytics/android/LocalyticsDao;Lcom/localytics/android/ICreativeDownloadTaskCallback;)Lcom/localytics/android/ICreativeDownloadTask;

    move-result-object v8

    .line 92
    .local v8, "task":Lcom/localytics/android/ICreativeDownloadTask;
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mNormalDownloads:Landroid/util/SparseArray;

    invoke-virtual {v0, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 96
    .end local v1    # "campaign":Lcom/localytics/android/MarketingMessage;
    .end local v6    # "campaignId":I
    .end local v8    # "task":Lcom/localytics/android/ICreativeDownloadTask;
    :cond_45
    return-void
.end method

.method protected handleCreativeForCampaign(Lcom/localytics/android/MarketingMessage;)V
    .registers 8
    .param p1, "campaign"    # Lcom/localytics/android/MarketingMessage;

    .prologue
    .line 152
    const-string/jumbo v4, "creative_url"

    invoke-static {p1, v4}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    .line 153
    if-eqz v4, :cond_49

    .line 155
    iget-object v4, p0, Lcom/localytics/android/CreativeManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {v4}, Lcom/localytics/android/CreativeManager;->getZipFileDirPath(Lcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "zipFileDirPath":Ljava/lang/String;
    const-string/jumbo v4, "base_path"

    invoke-static {p1, v4}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "unzipFileDirPath":Ljava/lang/String;
    const-string/jumbo v4, "zip_name"

    invoke-static {p1, v4}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "zipName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "fullZipPath":Ljava/lang/String;
    invoke-static {v2, v1, v3}, Lcom/localytics/android/Utils;->decompressZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 161
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/localytics/android/Utils;->deleteFile(Ljava/io/File;)V

    .line 168
    .end local v0    # "fullZipPath":Ljava/lang/String;
    .end local v1    # "unzipFileDirPath":Ljava/lang/String;
    .end local v2    # "zipFileDirPath":Ljava/lang/String;
    .end local v3    # "zipName":Ljava/lang/String;
    :cond_49
    :goto_49
    return-void

    .line 165
    .restart local v0    # "fullZipPath":Ljava/lang/String;
    .restart local v1    # "unzipFileDirPath":Ljava/lang/String;
    .restart local v2    # "zipFileDirPath":Ljava/lang/String;
    .restart local v3    # "zipName":Ljava/lang/String;
    :cond_4a
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Failed to unzip creative file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    goto :goto_49
.end method

.method hasPendingDownloads()Z
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mNormalDownloads:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mPriorityDownloads:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method inAppCampaignsWithDownloadedCreatives(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "campaigns":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 133
    .local v3, "withCreatives":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/localytics/android/MarketingMessage;

    .line 135
    .local v1, "message":Lcom/localytics/android/MarketingMessage;
    const-string/jumbo v4, "_id"

    invoke-static {v1, v4}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v2

    .line 136
    .local v2, "ruleId":I
    invoke-virtual {p0, v2}, Lcom/localytics/android/CreativeManager;->inAppCreativeExists(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 138
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 142
    .end local v1    # "message":Lcom/localytics/android/MarketingMessage;
    .end local v2    # "ruleId":I
    :cond_26
    return-object v3
.end method

.method inAppCreativeExists(I)Z
    .registers 6
    .param p1, "ruleId"    # I

    .prologue
    .line 147
    new-instance v0, Ljava/io/File;

    int-to-long v2, p1

    iget-object v1, p0, Lcom/localytics/android/CreativeManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-static {v2, v3, v1}, Lcom/localytics/android/CreativeManager;->getInAppLocalHtmlLocation(JLcom/localytics/android/LocalyticsDao;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public onComplete(Lcom/localytics/android/ICreativeDownloadTask;)V
    .registers 4
    .param p1, "task"    # Lcom/localytics/android/ICreativeDownloadTask;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/localytics/android/CreativeManager$2;

    invoke-direct {v1, p0, p1}, Lcom/localytics/android/CreativeManager$2;-><init>(Lcom/localytics/android/CreativeManager;Lcom/localytics/android/ICreativeDownloadTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method

.method public onError(Lcom/localytics/android/ICreativeDownloadTask;)V
    .registers 4
    .param p1, "task"    # Lcom/localytics/android/ICreativeDownloadTask;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/localytics/android/CreativeManager$3;

    invoke-direct {v1, p0, p1}, Lcom/localytics/android/CreativeManager$3;-><init>(Lcom/localytics/android/CreativeManager;Lcom/localytics/android/ICreativeDownloadTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    return-void
.end method

.method priorityDownloadCreatives(Ljava/util/List;Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;)V
    .registers 12
    .param p2, "firstDownloadedCallback"    # Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;",
            "Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "campaigns":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    iput-object p2, p0, Lcom/localytics/android/CreativeManager;->mFirstDownloadedCallback:Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/localytics/android/MarketingMessage;

    .line 103
    .local v1, "campaign":Lcom/localytics/android/MarketingMessage;
    const-string/jumbo v0, "campaign_id"

    invoke-static {v1, v0}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v6

    .line 104
    .local v6, "campaignId":I
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mPriorityDownloads:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 106
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mNormalDownloads:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/localytics/android/ICreativeDownloadTask;

    .line 107
    .local v8, "task":Lcom/localytics/android/ICreativeDownloadTask;
    if-nez v8, :cond_4c

    .line 109
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mCreativeDownloadTaskFactory:Lcom/localytics/android/CreativeDownloadTaskFactory;

    sget-object v2, Lcom/localytics/android/ICreativeDownloadTask$Priority;->HIGH:Lcom/localytics/android/ICreativeDownloadTask$Priority;

    iget v3, p0, Lcom/localytics/android/CreativeManager;->mSequence:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/localytics/android/CreativeManager;->mSequence:I

    iget-object v4, p0, Lcom/localytics/android/CreativeManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/CreativeDownloadTaskFactory;->creativeDownloadTask(Lcom/localytics/android/MarketingMessage;Lcom/localytics/android/ICreativeDownloadTask$Priority;ILcom/localytics/android/LocalyticsDao;Lcom/localytics/android/ICreativeDownloadTaskCallback;)Lcom/localytics/android/ICreativeDownloadTask;

    move-result-object v8

    .line 110
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 118
    :cond_41
    :goto_41
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mNormalDownloads:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 119
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mPriorityDownloads:Landroid/util/SparseArray;

    invoke-virtual {v0, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    .line 112
    :cond_4c
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mBlockingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 114
    sget-object v0, Lcom/localytics/android/ICreativeDownloadTask$Priority;->HIGH:Lcom/localytics/android/ICreativeDownloadTask$Priority;

    invoke-interface {v8, v0}, Lcom/localytics/android/ICreativeDownloadTask;->setPriority(Lcom/localytics/android/ICreativeDownloadTask$Priority;)V

    .line 115
    iget-object v0, p0, Lcom/localytics/android/CreativeManager;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_41

    .line 122
    .end local v1    # "campaign":Lcom/localytics/android/MarketingMessage;
    .end local v6    # "campaignId":I
    .end local v8    # "task":Lcom/localytics/android/ICreativeDownloadTask;
    :cond_5f
    return-void
.end method
