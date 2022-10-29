.class public final Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "PriorityThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor$PriorityThreadFactory;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final MAXIMUM_POOL_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 20
    sput v0, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;->CORE_POOL_SIZE:I

    .line 21
    sget v0, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;->MAXIMUM_POOL_SIZE:I

    return-void
.end method

.method private constructor <init>(IILjava/util/concurrent/TimeUnit;Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .registers 15
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "factory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Runnable;",
            ":",
            "Lio/fabric/sdk/android/services/concurrency/Dependency;",
            ":",
            "Lio/fabric/sdk/android/services/concurrency/Task;",
            ":",
            "Lio/fabric/sdk/android/services/concurrency/PriorityProvider;",
            ">(II",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue",
            "<TT;>;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p4, "workQueue":Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;, "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue<TT;>;"
    const-wide/16 v4, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 33
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;->prestartAllCoreThreads()I

    .line 34
    return-void
.end method

.method public static create()Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;
    .registers 6

    .prologue
    .line 64
    sget v1, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;->CORE_POOL_SIZE:I

    sget v2, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;->MAXIMUM_POOL_SIZE:I

    .line 1044
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v4, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;

    invoke-direct {v4}, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;-><init>()V

    new-instance v5, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor$PriorityThreadFactory;

    invoke-direct {v5}, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor$PriorityThreadFactory;-><init>()V

    invoke-direct/range {v0 .. v5}, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;-><init>(IILjava/util/concurrent/TimeUnit;Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 64
    return-object v0
.end method


# virtual methods
.method protected final afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 89
    move-object v0, p1

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/Task;

    .line 90
    .local v0, "task":Lio/fabric/sdk/android/services/concurrency/Task;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/concurrency/Task;->setFinished(Z)V

    .line 91
    invoke-interface {v0, p2}, Lio/fabric/sdk/android/services/concurrency/Task;->setError(Ljava/lang/Throwable;)V

    .line 1101
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    check-cast v1, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;

    .line 93
    invoke-virtual {v1}, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->recycleBlockedQueue()V

    .line 95
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 96
    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 79
    invoke-static {p1}, Lio/fabric/sdk/android/services/concurrency/PriorityTask;->isProperDelegate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 80
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 84
    :goto_9
    return-void

    .line 82
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_9
.end method

.method public final bridge synthetic getQueue()Ljava/util/concurrent/BlockingQueue;
    .registers 2

    .prologue
    .line 17
    .line 2101
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;

    .line 17
    return-object v0
.end method

.method protected final newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/PriorityFutureTask;

    invoke-direct {v0, p1, p2}, Lio/fabric/sdk/android/services/concurrency/PriorityFutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected final newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/PriorityFutureTask;

    invoke-direct {v0, p1}, Lio/fabric/sdk/android/services/concurrency/PriorityFutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
