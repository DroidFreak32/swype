.class final Lcom/flurry/sdk/ke$1;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ke;-><init>(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ke;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ke;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .registers 12

    .prologue
    .line 50
    iput-object p1, p0, Lcom/flurry/sdk/ke$1;->a:Lcom/flurry/sdk/ke;

    const/4 v2, 0x0

    const/4 v3, 0x5

    const-wide/16 v4, 0x1388

    move-object v1, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method


# virtual methods
.method protected final afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 73
    invoke-static {p1}, Lcom/flurry/sdk/ke;->a(Ljava/lang/Runnable;)Lcom/flurry/sdk/lx;

    move-result-object v0

    .line 74
    if-nez v0, :cond_a

    .line 89
    :goto_9
    return-void

    .line 78
    :cond_a
    iget-object v1, p0, Lcom/flurry/sdk/ke$1;->a:Lcom/flurry/sdk/ke;

    invoke-static {v1}, Lcom/flurry/sdk/ke;->a(Lcom/flurry/sdk/ke;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 79
    :try_start_11
    iget-object v2, p0, Lcom/flurry/sdk/ke$1;->a:Lcom/flurry/sdk/ke;

    invoke-static {v2}, Lcom/flurry/sdk/ke;->a(Lcom/flurry/sdk/ke;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_29

    .line 81
    iget-object v1, p0, Lcom/flurry/sdk/ke$1;->a:Lcom/flurry/sdk/ke;

    invoke-static {v1, v0}, Lcom/flurry/sdk/ke;->a(Lcom/flurry/sdk/ke;Lcom/flurry/sdk/lx;)V

    .line 83
    new-instance v1, Lcom/flurry/sdk/ke$1$2;

    invoke-direct {v1, p0, v0}, Lcom/flurry/sdk/ke$1$2;-><init>(Lcom/flurry/sdk/ke$1;Lcom/flurry/sdk/lx;)V

    .line 88
    invoke-virtual {v1}, Lcom/flurry/sdk/ke$1$2;->run()V

    goto :goto_9

    .line 80
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method protected final beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .registers 5

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 56
    invoke-static {p2}, Lcom/flurry/sdk/ke;->a(Ljava/lang/Runnable;)Lcom/flurry/sdk/lx;

    move-result-object v0

    .line 57
    if-nez v0, :cond_a

    .line 67
    :goto_9
    return-void

    .line 61
    :cond_a
    new-instance v1, Lcom/flurry/sdk/ke$1$1;

    invoke-direct {v1, p0, v0}, Lcom/flurry/sdk/ke$1$1;-><init>(Lcom/flurry/sdk/ke$1;Lcom/flurry/sdk/lx;)V

    .line 66
    invoke-virtual {v1}, Lcom/flurry/sdk/ke$1$1;->run()V

    goto :goto_9
.end method

.method protected final newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/flurry/sdk/kd;

    invoke-direct {v0, p1, p2}, Lcom/flurry/sdk/kd;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 100
    iget-object v1, p0, Lcom/flurry/sdk/ke$1;->a:Lcom/flurry/sdk/ke;

    invoke-static {v1}, Lcom/flurry/sdk/ke;->a(Lcom/flurry/sdk/ke;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 101
    :try_start_c
    iget-object v2, p0, Lcom/flurry/sdk/ke$1;->a:Lcom/flurry/sdk/ke;

    invoke-static {v2}, Lcom/flurry/sdk/ke;->a(Lcom/flurry/sdk/ke;)Ljava/util/HashMap;

    move-result-object v2

    check-cast p1, Lcom/flurry/sdk/lx;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    monitor-exit v1

    .line 104
    return-object v0

    .line 102
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_19

    throw v0
.end method

.method protected final newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Callable not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
