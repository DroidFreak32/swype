.class Lcom/nuance/connect/comm/CommandQueue$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/system/NetworkListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/comm/CommandQueue;


# direct methods
.method constructor <init>(Lcom/nuance/connect/comm/CommandQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkAvailable()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$000(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "CommandQueue.onNetworkAvailable()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/connect/comm/CommandQueue;->access$102(Lcom/nuance/connect/comm/CommandQueue;Z)Z

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$200(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;->flush()V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$300(Lcom/nuance/connect/comm/CommandQueue;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$400(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;->access$500(Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$000(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Resuming Transaction Queue"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$600(Lcom/nuance/connect/comm/CommandQueue;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/connect/comm/CommandQueue;->access$700(Lcom/nuance/connect/comm/CommandQueue;Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;)V

    return-void
.end method

.method public onNetworkDisconnect()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$000(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "CommandQueue.onNetworkDisconnect()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/connect/comm/CommandQueue;->access$102(Lcom/nuance/connect/comm/CommandQueue;Z)Z

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$200(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;->flush()V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$400(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;->pause()V

    return-void
.end method

.method public onNetworkUnavailable()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$000(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "CommandQueue.onNetworkUnavailable()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/connect/comm/CommandQueue;->access$102(Lcom/nuance/connect/comm/CommandQueue;Z)Z

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$200(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/comm/AnalyticsDataUsageScribeImpl;->flush()V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$1;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$400(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/comm/CommandQueue$ConnectionPool;->pause()V

    return-void
.end method
