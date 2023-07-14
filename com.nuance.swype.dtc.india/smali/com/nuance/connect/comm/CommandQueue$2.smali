.class Lcom/nuance/connect/comm/CommandQueue$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/comm/CommandQueue;


# direct methods
.method constructor <init>(Lcom/nuance/connect/comm/CommandQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/comm/CommandQueue$2;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$2;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$000(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "rejectedExecution"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/connect/comm/CommandQueue$2;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v1}, Lcom/nuance/connect/comm/CommandQueue;->access$800(Lcom/nuance/connect/comm/CommandQueue;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/comm/CommandQueue$2;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v2}, Lcom/nuance/connect/comm/CommandQueue;->access$800(Lcom/nuance/connect/comm/CommandQueue;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$2;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$000(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "rejectedExecution found old command.  Resubmitting..."

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;

    sget-object v1, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;->PENDING:Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->setState(Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$2;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    check-cast p1, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;

    invoke-static {v0, p1}, Lcom/nuance/connect/comm/CommandQueue;->access$700(Lcom/nuance/connect/comm/CommandQueue;Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
