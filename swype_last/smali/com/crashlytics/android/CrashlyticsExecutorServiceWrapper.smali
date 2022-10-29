.class final Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;
.super Ljava/lang/Object;
.source "CrashlyticsExecutorServiceWrapper.java"


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 2
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 22
    return-void
.end method


# virtual methods
.method final executeAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper$1;-><init>(Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v0

    .line 84
    :goto_b
    return-object v0

    .line 82
    :catch_c
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 84
    const/4 v0, 0x0

    goto :goto_b
.end method

.method final executeAsync(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper$2;-><init>(Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v0

    .line 114
    :goto_b
    return-object v0

    .line 112
    :catch_c
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 114
    const/4 v0, 0x0

    goto :goto_b
.end method

.method final executeSyncLoggingException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    const/4 v1, 0x0

    .line 43
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1a

    .line 44
    iget-object v2, p0, Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    const-wide/16 v4, 0x4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    .line 55
    :goto_19
    return-object v1

    .line 47
    :cond_1a
    iget-object v2, p0, Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_23
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_23} :catch_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_2a

    move-result-object v1

    goto :goto_19

    .line 50
    :catch_25
    move-exception v2

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    goto :goto_19

    .line 53
    :catch_2a
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string/jumbo v3, "Fabric"

    const-string/jumbo v4, "Failed to execute task."

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19
.end method
