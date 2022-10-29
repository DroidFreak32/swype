.class Lcom/nuance/connect/comm/CommandQueue$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/system/NetworkListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/comm/CommandQueue;


# direct methods
.method constructor <init>(Lcom/nuance/connect/comm/CommandQueue;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkAvailable()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$000(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "CommandQueue.onNetworkAvailable()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    const/4 v1, 0x1

    # setter for: Lcom/nuance/connect/comm/CommandQueue;->hasConnectivity:Z
    invoke-static {v0, v1}, Lcom/nuance/connect/comm/CommandQueue;->access$102(Lcom/nuance/connect/comm/CommandQueue;Z)Z

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$200(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;->flush()V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->enforceServerDelay:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$300(Lcom/nuance/connect/comm/CommandQueue;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->executor:Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$400(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

    move-result-object v0

    # getter for: Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;->isPaused:Z
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;->access$500(Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$000(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Resuming Transaction Queue"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # invokes: Lcom/nuance/connect/comm/CommandQueue;->resetTimers()V
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$600(Lcom/nuance/connect/comm/CommandQueue;)V

    :cond_44
    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    const/4 v1, 0x0

    # invokes: Lcom/nuance/connect/comm/CommandQueue;->processQueue(Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;)V
    invoke-static {v0, v1}, Lcom/nuance/connect/comm/CommandQueue;->access$700(Lcom/nuance/connect/comm/CommandQueue;Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;)V

    return-void
.end method

.method public onNetworkDisconnect()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$000(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "CommandQueue.onNetworkDisconnect()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/connect/comm/CommandQueue;->hasConnectivity:Z
    invoke-static {v0, v1}, Lcom/nuance/connect/comm/CommandQueue;->access$102(Lcom/nuance/connect/comm/CommandQueue;Z)Z

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$200(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;->flush()V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->executor:Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$400(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;->pause()V

    return-void
.end method

.method public onNetworkUnavailable()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$000(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "CommandQueue.onNetworkUnavailable()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/connect/comm/CommandQueue;->hasConnectivity:Z
    invoke-static {v0, v1}, Lcom/nuance/connect/comm/CommandQueue;->access$102(Lcom/nuance/connect/comm/CommandQueue;Z)Z

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$200(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;->flush()V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->executor:Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$400(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;->pause()V

    return-void
.end method
