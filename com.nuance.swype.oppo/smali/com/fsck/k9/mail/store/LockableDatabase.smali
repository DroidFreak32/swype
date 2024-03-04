.class public Lcom/fsck/k9/mail/store/LockableDatabase;
.super Ljava/lang/Object;
.source "LockableDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/store/LockableDatabase$1;,
        Lcom/fsck/k9/mail/store/LockableDatabase$StorageListener;,
        Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;,
        Lcom/fsck/k9/mail/store/LockableDatabase$SchemaDefinition;,
        Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;
    }
.end annotation


# instance fields
.field private inTransaction:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Landroid/app/Application;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mReadLock:Ljava/util/concurrent/locks/Lock;

.field private mSchemaDefinition:Lcom/fsck/k9/mail/store/LockableDatabase$SchemaDefinition;

.field private final mStorageListener:Lcom/fsck/k9/mail/store/LockableDatabase$StorageListener;

.field private mStorageProviderId:Ljava/lang/String;

.field private final mWriteLock:Ljava/util/concurrent/locks/Lock;

.field private uUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;Lcom/fsck/k9/mail/store/LockableDatabase$SchemaDefinition;)V
    .locals 3
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "uUid"    # Ljava/lang/String;
    .param p3, "schemaDefinition"    # Lcom/fsck/k9/mail/store/LockableDatabase$SchemaDefinition;

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    .line 142
    .local v0, "lock":Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mReadLock:Ljava/util/concurrent/locks/Lock;

    .line 143
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    .line 146
    new-instance v1, Lcom/fsck/k9/mail/store/LockableDatabase$StorageListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fsck/k9/mail/store/LockableDatabase$StorageListener;-><init>(Lcom/fsck/k9/mail/store/LockableDatabase;Lcom/fsck/k9/mail/store/LockableDatabase$1;)V

    iput-object v1, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mStorageListener:Lcom/fsck/k9/mail/store/LockableDatabase$StorageListener;

    .line 156
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v1, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->inTransaction:Ljava/lang/ThreadLocal;

    .line 172
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mApplication:Landroid/app/Application;

    .line 173
    iput-object p2, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->uUid:Ljava/lang/String;

    .line 174
    iput-object p3, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mSchemaDefinition:Lcom/fsck/k9/mail/store/LockableDatabase$SchemaDefinition;

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/mail/store/LockableDatabase;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LockableDatabase;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mStorageProviderId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/mail/store/LockableDatabase;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LockableDatabase;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->uUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/mail/store/LockableDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LockableDatabase;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/mail/store/LockableDatabase;)Landroid/app/Application;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LockableDatabase;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method private delete(Z)V
    .locals 9
    .param p1, "recreate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LockableDatabase;->lockWrite()V

    .line 540
    :try_start_0
    iget-object v7, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LockableDatabase;->getStorageManager()Lcom/fsck/k9/mail/store/StorageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 549
    .local v6, "storageManager":Lcom/fsck/k9/mail/store/StorageManager;
    :try_start_2
    iget-object v7, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->uUid:Ljava/lang/String;

    iget-object v8, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mStorageProviderId:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/fsck/k9/mail/store/StorageManager;->getAttachmentDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 550
    .local v2, "attachmentDirectory":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 551
    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 553
    .local v1, "attachment":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 555
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 551
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 558
    .end local v1    # "attachment":Ljava/io/File;
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 560
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 568
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "attachmentDirectory":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    :goto_2
    :try_start_3
    iget-object v7, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->uUid:Ljava/lang/String;

    iget-object v8, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mStorageProviderId:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/fsck/k9/mail/store/StorageManager;->getDatabase(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 575
    :goto_3
    if-eqz p1, :cond_3

    .line 577
    :try_start_4
    iget-object v7, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mApplication:Landroid/app/Application;

    invoke-virtual {p0, v7}, Lcom/fsck/k9/mail/store/LockableDatabase;->openOrCreateDataspace(Landroid/app/Application;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 587
    :goto_4
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LockableDatabase;->unlockWrite()V

    .line 588
    return-void

    .line 570
    :catch_0
    move-exception v3

    .line 572
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v7, "k9"

    const-string v8, "LockableDatabase: delete(): Unable to delete backing DB file"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 587
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "storageManager":Lcom/fsck/k9/mail/store/StorageManager;
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LockableDatabase;->unlockWrite()V

    throw v7

    .line 582
    .restart local v6    # "storageManager":Lcom/fsck/k9/mail/store/StorageManager;
    :cond_3
    :try_start_6
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LockableDatabase;->getStorageManager()Lcom/fsck/k9/mail/store/StorageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mStorageListener:Lcom/fsck/k9/mail/store/LockableDatabase$StorageListener;

    invoke-virtual {v7, v8}, Lcom/fsck/k9/mail/store/StorageManager;->removeListener(Lcom/fsck/k9/mail/store/StorageManager$StorageListener;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 563
    :catch_1
    move-exception v7

    goto :goto_2

    .end local v6    # "storageManager":Lcom/fsck/k9/mail/store/StorageManager;
    :catch_2
    move-exception v7

    goto :goto_0
.end method

.method private getStorageManager()Lcom/fsck/k9/mail/store/StorageManager;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/StorageManager;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/mail/store/StorageManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 520
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/LockableDatabase;->delete(Z)V

    .line 521
    return-void
.end method

.method public execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;
    .locals 11
    .param p1, "transactional"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .local p2, "callback":Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;, "Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback<TT;>;"
    const/4 v10, 0x0

    const/4 v3, 0x1

    .line 313
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LockableDatabase;->lockRead()V

    .line 314
    if-eqz p1, :cond_4

    iget-object v5, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->inTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    .line 317
    .local v3, "doTransaction":Z
    :goto_0
    :try_start_0
    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    .line 318
    .local v2, "debug":Z
    if-eqz v3, :cond_0

    .line 320
    iget-object v5, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->inTransaction:Ljava/lang/ThreadLocal;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 321
    iget-object v5, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 325
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p2, v5}, Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object v4

    .line 326
    .local v4, "result":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_1

    .line 328
    iget-object v5, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    :cond_1
    if-eqz v3, :cond_2

    .line 337
    if-eqz v2, :cond_5

    .line 339
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 346
    .local v0, "begin":J
    :goto_1
    iget-object v5, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 347
    if-eqz v2, :cond_2

    .line 349
    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "LockableDatabase: Transaction ended, took "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 356
    .end local v0    # "begin":J
    :cond_2
    if-eqz v3, :cond_3

    .line 358
    iget-object v5, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->inTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v5, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 360
    :cond_3
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LockableDatabase;->unlockRead()V

    return-object v4

    .line 314
    .end local v2    # "debug":Z
    .end local v3    # "doTransaction":Z
    .end local v4    # "result":Ljava/lang/Object;, "TT;"
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 343
    .restart local v2    # "debug":Z
    .restart local v3    # "doTransaction":Z
    .restart local v4    # "result":Ljava/lang/Object;, "TT;"
    :cond_5
    const-wide/16 v0, 0x0

    .restart local v0    # "begin":J
    goto :goto_1

    .line 334
    .end local v0    # "begin":J
    .end local v4    # "result":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_6

    .line 337
    if-eqz v2, :cond_8

    .line 339
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 346
    .restart local v0    # "begin":J
    :goto_2
    iget-object v6, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 347
    if-eqz v2, :cond_6

    .line 349
    const-string v6, "k9"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "LockableDatabase: Transaction ended, took "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .end local v0    # "begin":J
    :cond_6
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 356
    .end local v2    # "debug":Z
    :catchall_1
    move-exception v5

    if-eqz v3, :cond_7

    .line 358
    iget-object v6, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->inTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v6, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 360
    :cond_7
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LockableDatabase;->unlockRead()V

    throw v5

    .line 343
    .restart local v2    # "debug":Z
    :cond_8
    const-wide/16 v0, 0x0

    .restart local v0    # "begin":J
    goto :goto_2
.end method

.method public getStorageProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mStorageProviderId:Ljava/lang/String;

    return-object v0
.end method

.method protected lockRead()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 209
    :try_start_0
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LockableDatabase;->getStorageManager()Lcom/fsck/k9/mail/store/StorageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mStorageProviderId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/store/StorageManager;->lockProvider(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/UnavailableStorageException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 220
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Lcom/fsck/k9/mail/store/UnavailableStorageException;
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 214
    throw v0

    .line 216
    .end local v0    # "e":Lcom/fsck/k9/mail/store/UnavailableStorageException;
    :catch_1
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 219
    throw v0
.end method

.method protected lockWrite()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mStorageProviderId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LockableDatabase;->lockWrite(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method protected lockWrite(Ljava/lang/String;)V
    .locals 2
    .param p1, "providerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 263
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 266
    :try_start_0
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LockableDatabase;->getStorageManager()Lcom/fsck/k9/mail/store/StorageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fsck/k9/mail/store/StorageManager;->lockProvider(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/UnavailableStorageException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 277
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Lcom/fsck/k9/mail/store/UnavailableStorageException;
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 271
    throw v0

    .line 273
    .end local v0    # "e":Lcom/fsck/k9/mail/store/UnavailableStorageException;
    :catch_1
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 276
    throw v0
.end method

.method public open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LockableDatabase;->lockWrite()V

    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mApplication:Landroid/app/Application;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LockableDatabase;->openOrCreateDataspace(Landroid/app/Application;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LockableDatabase;->unlockWrite()V

    .line 430
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/StorageManager;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/mail/store/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mStorageListener:Lcom/fsck/k9/mail/store/LockableDatabase$StorageListener;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/StorageManager;->addListener(Lcom/fsck/k9/mail/store/StorageManager$StorageListener;)V

    .line 431
    return-void

    .line 428
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LockableDatabase;->unlockWrite()V

    throw v0
.end method

.method protected openOrCreateDataspace(Landroid/app/Application;)V
    .locals 5
    .param p1, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LockableDatabase;->lockWrite()V

    .line 444
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mStorageProviderId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->prepareStorage(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 447
    .local v0, "databaseFile":Ljava/io/File;
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    iget-object v3, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mSchemaDefinition:Lcom/fsck/k9/mail/store/LockableDatabase$SchemaDefinition;

    invoke-interface {v3}, Lcom/fsck/k9/mail/store/LockableDatabase$SchemaDefinition;->getVersion()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 458
    iget-object v2, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mSchemaDefinition:Lcom/fsck/k9/mail/store/LockableDatabase$SchemaDefinition;

    iget-object v3, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {v2, v3}, Lcom/fsck/k9/mail/store/LockableDatabase$SchemaDefinition;->doDbUpgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 463
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LockableDatabase;->unlockWrite()V

    .line 464
    return-void

    .line 449
    :catch_0
    move-exception v1

    .line 452
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v2, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to open DB "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - removing file and retrying"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 454
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 463
    .end local v0    # "databaseFile":Ljava/io/File;
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LockableDatabase;->unlockWrite()V

    throw v2
.end method

.method protected prepareStorage(Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .param p1, "providerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LockableDatabase;->getStorageManager()Lcom/fsck/k9/mail/store/StorageManager;

    move-result-object v4

    .line 479
    .local v4, "storageManager":Lcom/fsck/k9/mail/store/StorageManager;
    iget-object v5, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->uUid:Ljava/lang/String;

    invoke-virtual {v4, v5, p1}, Lcom/fsck/k9/mail/store/StorageManager;->getDatabase(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 480
    .local v2, "databaseFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 481
    .local v3, "databaseParentDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 484
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 486
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 488
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1

    .line 491
    new-instance v5, Lcom/fsck/k9/mail/store/UnavailableStorageException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unable to access: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fsck/k9/mail/store/UnavailableStorageException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 493
    :cond_1
    const-string v5, ".nomedia"

    invoke-static {v3, v5}, Lcom/fsck/k9/helper/Utility;->touchFile(Ljava/io/File;Ljava/lang/String;)V

    .line 498
    :cond_2
    iget-object v5, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->uUid:Ljava/lang/String;

    invoke-virtual {v4, v5, p1}, Lcom/fsck/k9/mail/store/StorageManager;->getAttachmentDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 500
    .local v0, "attachmentDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 501
    .local v1, "attachmentParentDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 503
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 504
    const-string v5, ".nomedia"

    invoke-static {v1, v5}, Lcom/fsck/k9/helper/Utility;->touchFile(Ljava/io/File;Ljava/lang/String;)V

    .line 506
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 508
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 510
    :cond_4
    return-object v2
.end method

.method public recreate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 525
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/LockableDatabase;->delete(Z)V

    .line 526
    return-void
.end method

.method public setStorageProviderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mStorageProviderId"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mStorageProviderId:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public switchProvider(Ljava/lang/String;)V
    .locals 6
    .param p1, "newProviderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 371
    iget-object v3, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mStorageProviderId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 373
    const-string v3, "k9"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LockableDatabase: Ignoring provider switch request as they are equal: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mStorageProviderId:Ljava/lang/String;

    .line 378
    .local v1, "oldProviderId":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/LockableDatabase;->lockWrite(Ljava/lang/String;)V

    .line 381
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LockableDatabase;->lockWrite(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 386
    :try_start_1
    iget-object v3, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LockableDatabase;->getStorageManager()Lcom/fsck/k9/mail/store/StorageManager;

    move-result-object v2

    .line 396
    .local v2, "storageManager":Lcom/fsck/k9/mail/store/StorageManager;
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LockableDatabase;->prepareStorage(Ljava/lang/String;)Ljava/io/File;

    .line 399
    iget-object v3, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->uUid:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/fsck/k9/mail/store/StorageManager;->getDatabase(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->uUid:Ljava/lang/String;

    invoke-virtual {v2, v4, p1}, Lcom/fsck/k9/mail/store/StorageManager;->getDatabase(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fsck/k9/helper/Utility;->moveRecursive(Ljava/io/File;Ljava/io/File;)V

    .line 401
    iget-object v3, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->uUid:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/fsck/k9/mail/store/StorageManager;->getAttachmentDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->uUid:Ljava/lang/String;

    invoke-virtual {v2, v4, p1}, Lcom/fsck/k9/mail/store/StorageManager;->getAttachmentDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fsck/k9/helper/Utility;->moveRecursive(Ljava/io/File;Ljava/io/File;)V

    .line 403
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mStorageProviderId:Ljava/lang/String;

    .line 406
    iget-object v3, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mApplication:Landroid/app/Application;

    invoke-virtual {p0, v3}, Lcom/fsck/k9/mail/store/LockableDatabase;->openOrCreateDataspace(Landroid/app/Application;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 410
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LockableDatabase;->unlockWrite(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 415
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/LockableDatabase;->unlockWrite(Ljava/lang/String;)V

    goto :goto_0

    .line 388
    .end local v2    # "storageManager":Lcom/fsck/k9/mail/store/StorageManager;
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "k9"

    const-string v4, "Unable to close DB on local store migration"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 410
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LockableDatabase;->unlockWrite(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 415
    :catchall_1
    move-exception v3

    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/LockableDatabase;->unlockWrite(Ljava/lang/String;)V

    throw v3
.end method

.method protected unlockRead()V
    .locals 2

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LockableDatabase;->getStorageManager()Lcom/fsck/k9/mail/store/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mStorageProviderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/StorageManager;->unlockProvider(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 227
    return-void
.end method

.method protected unlockWrite()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mStorageProviderId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LockableDatabase;->unlockWrite(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method protected unlockWrite(Ljava/lang/String;)V
    .locals 1
    .param p1, "providerId"    # Ljava/lang/String;

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LockableDatabase;->getStorageManager()Lcom/fsck/k9/mail/store/StorageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/store/StorageManager;->unlockProvider(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LockableDatabase;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 289
    return-void
.end method
