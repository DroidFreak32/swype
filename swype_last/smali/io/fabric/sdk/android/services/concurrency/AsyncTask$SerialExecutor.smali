.class final Lio/fabric/sdk/android/services/concurrency/AsyncTask$SerialExecutor;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/concurrency/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerialExecutor"
.end annotation


# instance fields
.field active:Ljava/lang/Runnable;

.field final tasks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$SerialExecutor;->tasks:Ljava/util/LinkedList;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 229
    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/AsyncTask$SerialExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized execute(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 234
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$SerialExecutor;->tasks:Ljava/util/LinkedList;

    new-instance v1, Lio/fabric/sdk/android/services/concurrency/AsyncTask$SerialExecutor$1;

    invoke-direct {v1, p0, p1}, Lio/fabric/sdk/android/services/concurrency/AsyncTask$SerialExecutor$1;-><init>(Lio/fabric/sdk/android/services/concurrency/AsyncTask$SerialExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$SerialExecutor;->active:Ljava/lang/Runnable;

    if-nez v0, :cond_12

    .line 244
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/AsyncTask$SerialExecutor;->scheduleNext()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 246
    :cond_12
    monitor-exit p0

    return-void

    .line 234
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized scheduleNext()V
    .registers 3

    .prologue
    .line 249
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$SerialExecutor;->tasks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$SerialExecutor;->active:Ljava/lang/Runnable;

    if-eqz v0, :cond_14

    .line 250
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$SerialExecutor;->active:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 252
    :cond_14
    monitor-exit p0

    return-void

    .line 249
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method
