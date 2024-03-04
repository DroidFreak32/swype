.class Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;
.super Ljava/util/concurrent/ThreadPoolExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/comm/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionPool"
.end annotation


# instance fields
.field private volatile isPaused:Z

.field private pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic this$0:Lcom/nuance/connect/service/comm/CommandQueue;

.field private unpaused:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>(Lcom/nuance/connect/service/comm/CommandQueue;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->unpaused:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method static synthetic access$2400(Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->isPaused:Z

    return v0
.end method


# virtual methods
.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 2

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->isPaused:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->unpaused:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public pause()V
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->isPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$000(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "PAUSING"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->isPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public resume()V
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->isPaused:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$000(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "RESUMING"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->isPaused:Z

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->unpaused:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
