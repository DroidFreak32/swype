.class abstract Lcom/localytics/android/BaseHandler;
.super Landroid/os/Handler;
.source "BaseHandler.java"


# static fields
.field private static final MESSAGE_GET_VALUE:I = 0x2

.field static final MESSAGE_INIT:I = 0x1

.field static final MESSAGE_UPLOAD:I = 0x3

.field static final MESSAGE_UPLOAD_CALLBACK:I = 0x4

.field private static final UPLOAD_WAKE_LOCK:Ljava/lang/String; = "UPLOAD_WAKE_LOCK"


# instance fields
.field protected doesRetry:Z

.field mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

.field mProvider:Lcom/localytics/android/BaseProvider;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private maxRowToUpload:I

.field private numberOfRetries:I

.field protected shouldProcessPendingUploadMessage:Z

.field siloName:Ljava/lang/String;

.field protected uploadThread:Lcom/localytics/android/BaseUploadThread;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V
    .registers 5
    .param p1, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    iput v1, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I

    .line 58
    iput v1, p0, Lcom/localytics/android/BaseHandler;->numberOfRetries:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/BaseHandler;->uploadThread:Lcom/localytics/android/BaseUploadThread;

    .line 63
    iput-boolean v1, p0, Lcom/localytics/android/BaseHandler;->shouldProcessPendingUploadMessage:Z

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/localytics/android/BaseHandler;->doesRetry:Z

    .line 69
    iput-object p1, p0, Lcom/localytics/android/BaseHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    .line 70
    return-void
.end method


# virtual methods
.method protected abstract _deleteUploadedData(I)V
.end method

.method protected abstract _getDataToUpload()Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract _getMaxRowToUpload()I
.end method

.method protected abstract _getUploadThread(Ljava/util/TreeMap;Ljava/lang/String;)Lcom/localytics/android/BaseUploadThread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/localytics/android/BaseUploadThread;"
        }
    .end annotation
.end method

.method abstract _init()V
.end method

.method protected abstract _onUploadCompleted(ZLjava/lang/String;)V
.end method

.method protected _runBatchTransactionOnProvider(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    if-eqz v0, :cond_a

    .line 177
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0, p1}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    .line 183
    :goto_9
    return-void

    .line 181
    :cond_a
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_9
.end method

.method _upload(ZLjava/lang/String;)V
    .registers 10
    .param p1, "adjustMaxRow"    # Z
    .param p2, "customerId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 302
    invoke-virtual {p0}, Lcom/localytics/android/BaseHandler;->_getMaxRowToUpload()I

    move-result v2

    .line 304
    .local v2, "lastRowToUpload":I
    if-eqz p1, :cond_27

    iget v3, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I

    if-eqz v3, :cond_27

    iget-boolean v3, p0, Lcom/localytics/android/BaseHandler;->shouldProcessPendingUploadMessage:Z

    if-nez v3, :cond_27

    .line 306
    iput v2, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I

    .line 308
    const-string/jumbo v3, "Already uploading %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/localytics/android/BaseHandler;->siloName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 344
    :cond_26
    :goto_26
    return-void

    .line 315
    :cond_27
    :try_start_27
    invoke-virtual {p0}, Lcom/localytics/android/BaseHandler;->_getDataToUpload()Ljava/util/TreeMap;

    move-result-object v0

    .line 316
    .local v0, "data":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v3

    if-nez v3, :cond_3f

    .line 318
    const/4 v3, 0x0

    iput v3, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_34} :catch_35

    goto :goto_26

    .line 339
    .end local v0    # "data":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :catch_35
    move-exception v1

    .line 341
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Error occurred during upload"

    invoke-static {v3, v1}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    iput v6, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I

    goto :goto_26

    .line 326
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "data":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_3f
    const/4 v3, 0x0

    :try_start_40
    iput-boolean v3, p0, Lcom/localytics/android/BaseHandler;->shouldProcessPendingUploadMessage:Z

    .line 328
    if-eqz p1, :cond_46

    .line 330
    iput v2, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I

    .line 333
    :cond_46
    invoke-virtual {p0}, Lcom/localytics/android/BaseHandler;->enterWakeLock()V

    .line 334
    invoke-virtual {p0, v0, p2}, Lcom/localytics/android/BaseHandler;->_getUploadThread(Ljava/util/TreeMap;Ljava/lang/String;)Lcom/localytics/android/BaseUploadThread;

    move-result-object v3

    iput-object v3, p0, Lcom/localytics/android/BaseHandler;->uploadThread:Lcom/localytics/android/BaseUploadThread;

    if-eqz v3, :cond_26

    .line 336
    iget-object v3, p0, Lcom/localytics/android/BaseHandler;->uploadThread:Lcom/localytics/android/BaseUploadThread;

    invoke-virtual {v3}, Lcom/localytics/android/BaseUploadThread;->start()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_56} :catch_35

    goto :goto_26
.end method

.method protected _uploadCallback(ILjava/lang/String;Z)V
    .registers 10
    .param p1, "rowsToDelete"    # I
    .param p2, "responseString"    # Ljava/lang/String;
    .param p3, "successful"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 348
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->uploadThread:Lcom/localytics/android/BaseUploadThread;

    iget-object v5, v0, Lcom/localytics/android/BaseUploadThread;->customerID:Ljava/lang/String;

    .line 349
    .local v5, "customerId":Ljava/lang/String;
    iput-object v4, p0, Lcom/localytics/android/BaseHandler;->uploadThread:Lcom/localytics/android/BaseUploadThread;

    .line 350
    if-lez p1, :cond_2b

    .line 352
    invoke-virtual {p0, p1}, Lcom/localytics/android/BaseHandler;->_deleteUploadedData(I)V

    .line 353
    iput v1, p0, Lcom/localytics/android/BaseHandler;->numberOfRetries:I

    .line 361
    :goto_f
    iget-boolean v0, p0, Lcom/localytics/android/BaseHandler;->doesRetry:Z

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I

    if-eq p1, v0, :cond_1c

    iget v0, p0, Lcom/localytics/android/BaseHandler;->numberOfRetries:I

    const/4 v2, 0x3

    if-le v0, v2, :cond_32

    .line 363
    :cond_1c
    iget v0, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I

    if-ne p1, v0, :cond_23

    .line 365
    invoke-virtual {p0, p3, p2}, Lcom/localytics/android/BaseHandler;->_onUploadCompleted(ZLjava/lang/String;)V

    .line 376
    :cond_23
    iput v1, p0, Lcom/localytics/android/BaseHandler;->numberOfRetries:I

    .line 377
    iput v1, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I

    .line 379
    invoke-virtual {p0}, Lcom/localytics/android/BaseHandler;->exitWakeLock()V

    .line 386
    :goto_2a
    return-void

    .line 358
    :cond_2b
    iget v0, p0, Lcom/localytics/android/BaseHandler;->numberOfRetries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/localytics/android/BaseHandler;->numberOfRetries:I

    goto :goto_f

    .line 383
    :cond_32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/localytics/android/BaseHandler;->shouldProcessPendingUploadMessage:Z

    .line 384
    iget v0, p0, Lcom/localytics/android/BaseHandler;->numberOfRetries:I

    if-lez v0, :cond_40

    const-wide/16 v2, 0x2710

    :goto_3b
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseHandler;->upload(ZJLjava/util/concurrent/Future;Ljava/lang/String;)V

    goto :goto_2a

    :cond_40
    const-wide/16 v2, 0x0

    goto :goto_3b
.end method

.method protected enterWakeLock()V
    .registers 7

    .prologue
    .line 394
    iget-object v2, p0, Lcom/localytics/android/BaseHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v2}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 395
    .local v0, "appContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 396
    const-string/jumbo v3, "android.permission.WAKE_LOCK"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_60

    .line 398
    iget-object v2, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_58

    .line 401
    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 402
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string/jumbo v3, "UPLOAD_WAKE_LOCK"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 403
    iget-object v2, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 404
    iget-object v2, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 406
    const-string/jumbo v2, "Wake lock will be acquired but is held when shouldn\'t be."

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 408
    :cond_42
    iget-object v2, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 409
    iget-object v2, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 411
    const-string/jumbo v2, "Wake lock acquired."

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 422
    .end local v1    # "pm":Landroid/os/PowerManager;
    :cond_58
    :goto_58
    return-void

    .line 415
    .restart local v1    # "pm":Landroid/os/PowerManager;
    :cond_59
    const-string/jumbo v2, "Localytics library failed to get wake lock"

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    goto :goto_58

    .line 420
    .end local v1    # "pm":Landroid/os/PowerManager;
    :cond_60
    const-string/jumbo v2, "android.permission.WAKE_LOCK is missing from the Manifest file."

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    goto :goto_58
.end method

.method protected exitWakeLock()V
    .registers 5

    .prologue
    .line 426
    iget-object v1, p0, Lcom/localytics/android/BaseHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 427
    .local v0, "appContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 428
    const-string/jumbo v2, "android.permission.WAKE_LOCK"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_47

    .line 430
    iget-object v1, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_3f

    .line 432
    iget-object v1, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_29

    .line 434
    const-string/jumbo v1, "Wake lock will be released but not held when should be."

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 438
    :cond_29
    iget-object v1, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 440
    iget-object v1, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 442
    const-string/jumbo v1, "Wake lock was not released when it should have been."

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 448
    :goto_3c
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 455
    :cond_3f
    :goto_3f
    return-void

    .line 446
    :cond_40
    const-string/jumbo v1, "Wake lock released."

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    goto :goto_3c

    .line 453
    :cond_47
    const-string/jumbo v1, "android.permission.WAKE_LOCK is missing from the Manifest file."

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    goto :goto_3f
.end method

.method getBool(Ljava/util/concurrent/Callable;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/localytics/android/BaseHandler;->getType(Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected getFuture(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/FutureTask;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/FutureTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 188
    .local v0, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TT;>;"
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/localytics/android/BaseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/localytics/android/BaseHandler;->queueMessage(Landroid/os/Message;)Z

    .line 189
    return-object v0
.end method

.method getFutureTaskValue(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/FutureTask",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    move-object v0, p2

    .line 197
    .local v0, "ret":Ljava/lang/Object;, "TT;"
    :try_start_1
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_7
    .catchall {:try_start_1 .. :try_end_4} :catchall_a

    move-result-object v0

    move-object v1, v0

    .line 204
    .end local v0    # "ret":Ljava/lang/Object;, "TT;"
    .local v1, "ret":Ljava/lang/Object;, "TT;"
    :goto_6
    return-object v1

    .end local v1    # "ret":Ljava/lang/Object;, "TT;"
    .restart local v0    # "ret":Ljava/lang/Object;, "TT;"
    :catch_7
    move-exception v2

    move-object v1, v0

    .end local v0    # "ret":Ljava/lang/Object;, "TT;"
    .restart local v1    # "ret":Ljava/lang/Object;, "TT;"
    goto :goto_6

    .end local v1    # "ret":Ljava/lang/Object;, "TT;"
    .restart local v0    # "ret":Ljava/lang/Object;, "TT;"
    :catchall_a
    move-exception v2

    move-object v1, v0

    .end local v0    # "ret":Ljava/lang/Object;, "TT;"
    .restart local v1    # "ret":Ljava/lang/Object;, "TT;"
    goto :goto_6
.end method

.method getInt(Ljava/util/concurrent/Callable;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/localytics/android/BaseHandler;->getType(Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getList(Ljava/util/concurrent/Callable;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/util/List<TT;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/localytics/android/BaseHandler;->getType(Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method getMap(Ljava/util/concurrent/Callable;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/util/Map<TK;TV;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/localytics/android/BaseHandler;->getType(Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method getString(Ljava/util/concurrent/Callable;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/localytics/android/BaseHandler;->getType(Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getType(Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_13

    .line 237
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot be called on the main thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_13
    invoke-virtual {p0, p1}, Lcom/localytics/android/BaseHandler;->getFuture(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/localytics/android/BaseHandler;->getFutureTaskValue(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 77
    :try_start_0
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 79
    const-string/jumbo v11, "%s handler received %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/localytics/android/BaseHandler;->siloName:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object p1, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 81
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_de

    .line 154
    invoke-virtual/range {p0 .. p1}, Lcom/localytics/android/BaseHandler;->handleMessageExtended(Landroid/os/Message;)V

    .line 163
    :cond_22
    :goto_22
    return-void

    .line 85
    :pswitch_23
    invoke-virtual {p0}, Lcom/localytics/android/BaseHandler;->_init()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_22

    .line 159
    :catch_27
    move-exception v4

    .line 161
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "%s handler can\'t handle message %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/localytics/android/BaseHandler;->siloName:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v4}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 90
    .end local v4    # "e":Ljava/lang/Exception;
    :pswitch_46
    :try_start_46
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/FutureTask;

    .line 91
    .local v5, "fTask":Ljava/util/concurrent/FutureTask;
    new-instance v11, Lcom/localytics/android/BaseHandler$1;

    invoke-direct {v11, p0, v5}, Lcom/localytics/android/BaseHandler$1;-><init>(Lcom/localytics/android/BaseHandler;Ljava/util/concurrent/FutureTask;)V

    invoke-virtual {p0, v11}, Lcom/localytics/android/BaseHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto :goto_22

    .line 103
    .end local v5    # "fTask":Ljava/util/concurrent/FutureTask;
    :pswitch_55
    const-string/jumbo v11, "%s handler received MESSAGE_UPLOAD"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/localytics/android/BaseHandler;->siloName:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 105
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/Object;

    move-object v0, v11

    check-cast v0, [Ljava/lang/Object;

    move-object v7, v0

    .line 106
    .local v7, "params":[Ljava/lang/Object;
    const/4 v11, 0x0

    aget-object v1, v7, v11

    check-cast v1, Ljava/lang/Boolean;

    .line 107
    .local v1, "adjustMaxRowToUpload":Ljava/lang/Boolean;
    const/4 v11, 0x1

    aget-object v3, v7, v11

    check-cast v3, Ljava/util/concurrent/Future;

    .line 109
    .local v3, "customerIdFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    if-nez v3, :cond_9a

    .line 111
    const/4 v11, 0x2

    aget-object v2, v7, v11

    check-cast v2, Ljava/lang/String;

    .line 118
    .local v2, "customerId":Ljava/lang/String;
    :goto_82
    const/4 v11, 0x3

    aget-object v6, v7, v11

    check-cast v6, Ljava/lang/Boolean;

    .line 120
    .local v6, "isPendingUpload":Ljava/lang/Boolean;
    iget-boolean v11, p0, Lcom/localytics/android/BaseHandler;->shouldProcessPendingUploadMessage:Z

    if-nez v11, :cond_91

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_22

    .line 122
    :cond_91
    new-instance v11, Lcom/localytics/android/BaseHandler$2;

    invoke-direct {v11, p0, v1, v2}, Lcom/localytics/android/BaseHandler$2;-><init>(Lcom/localytics/android/BaseHandler;Ljava/lang/Boolean;Ljava/lang/String;)V

    invoke-virtual {p0, v11}, Lcom/localytics/android/BaseHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V

    goto :goto_22

    .line 115
    .end local v2    # "customerId":Ljava/lang/String;
    .end local v6    # "isPendingUpload":Ljava/lang/Boolean;
    :cond_9a
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .restart local v2    # "customerId":Ljava/lang/String;
    goto :goto_82

    .line 135
    .end local v1    # "adjustMaxRowToUpload":Ljava/lang/Boolean;
    .end local v2    # "customerId":Ljava/lang/String;
    .end local v3    # "customerIdFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    .end local v7    # "params":[Ljava/lang/Object;
    :pswitch_a1
    const-string/jumbo v11, "%s handler received MESSAGE_UPLOAD_CALLBACK"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/localytics/android/BaseHandler;->siloName:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 137
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/Object;

    move-object v0, v11

    check-cast v0, [Ljava/lang/Object;

    move-object v7, v0

    .line 138
    .restart local v7    # "params":[Ljava/lang/Object;
    const/4 v11, 0x0

    aget-object v11, v7, v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 139
    .local v9, "rowsToDelete":I
    const/4 v11, 0x1

    aget-object v8, v7, v11

    check-cast v8, Ljava/lang/String;

    .line 140
    .local v8, "responseString":Ljava/lang/String;
    const/4 v11, 0x2

    aget-object v11, v7, v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 142
    .local v10, "successful":Z
    new-instance v11, Lcom/localytics/android/BaseHandler$3;

    invoke-direct {v11, p0, v9, v8, v10}, Lcom/localytics/android/BaseHandler$3;-><init>(Lcom/localytics/android/BaseHandler;ILjava/lang/String;Z)V

    invoke-virtual {p0, v11}, Lcom/localytics/android/BaseHandler;->_runBatchTransactionOnProvider(Ljava/lang/Runnable;)V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_dc} :catch_27

    goto/16 :goto_22

    .line 81
    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_23
        :pswitch_46
        :pswitch_55
        :pswitch_a1
    .end packed-switch
.end method

.method handleMessageExtended(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Fell through switch statement"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method queueMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/localytics/android/BaseHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_13

    .line 247
    invoke-virtual {p0, p1}, Lcom/localytics/android/BaseHandler;->handleMessage(Landroid/os/Message;)V

    .line 248
    const/4 v0, 0x1

    .line 252
    :goto_12
    return v0

    :cond_13
    invoke-virtual {p0, p1}, Lcom/localytics/android/BaseHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_12
.end method

.method final queueMessageDelayed(Landroid/os/Message;J)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delay"    # J

    .prologue
    .line 258
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_b

    .line 260
    invoke-virtual {p0, p1}, Lcom/localytics/android/BaseHandler;->queueMessage(Landroid/os/Message;)Z

    move-result v0

    .line 264
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lcom/localytics/android/BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    goto :goto_a
.end method

.method upload()V
    .registers 7

    .prologue
    .line 272
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getCustomerIdFuture()Ljava/util/concurrent/Future;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseHandler;->upload(ZJLjava/util/concurrent/Future;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method upload(Ljava/util/concurrent/Future;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "customerIdFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseHandler;->upload(ZJLjava/util/concurrent/Future;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method upload(ZJLjava/util/concurrent/Future;Ljava/lang/String;)V
    .registers 14
    .param p1, "adjustMaxRowToUpload"    # Z
    .param p2, "backoff"    # J
    .param p5, "customerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "customerIdFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 282
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_25

    .line 284
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object p4, v0, v4

    aput-object p5, v0, v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/localytics/android/BaseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/BaseHandler;->queueMessage(Landroid/os/Message;)Z

    .line 290
    :goto_24
    return-void

    .line 288
    :cond_25
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object p4, v0, v4

    aput-object p5, v0, v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/localytics/android/BaseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/localytics/android/BaseHandler;->queueMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_24
.end method
