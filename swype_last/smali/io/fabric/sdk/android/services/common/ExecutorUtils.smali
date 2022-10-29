.class public final Lio/fabric/sdk/android/services/common/ExecutorUtils;
.super Ljava/lang/Object;
.source "ExecutorUtils.java"


# direct methods
.method public static final addDelayedShutdownHook(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .registers 7
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "service"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 57
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1063
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lio/fabric/sdk/android/services/common/ExecutorUtils$2;

    invoke-direct {v3, p0, p1, v0}, Lio/fabric/sdk/android/services/common/ExecutorUtils$2;-><init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/TimeUnit;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Crashlytics Shutdown Hook for "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 59
    return-void
.end method

.method public static buildSingleThreadScheduledExecutorService(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {p0}, Lio/fabric/sdk/android/services/common/ExecutorUtils;->getNamedThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    .line 30
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 32
    .local v0, "executor":Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {p0, v0}, Lio/fabric/sdk/android/services/common/ExecutorUtils;->addDelayedShutdownHook(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 33
    return-object v0
.end method

.method public static final getNamedThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .registers 5
    .param p0, "threadNameTemplate"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 39
    .local v0, "count":Ljava/util/concurrent/atomic/AtomicLong;
    new-instance v1, Lio/fabric/sdk/android/services/common/ExecutorUtils$1;

    invoke-direct {v1, p0, v0}, Lio/fabric/sdk/android/services/common/ExecutorUtils$1;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;)V

    return-object v1
.end method
