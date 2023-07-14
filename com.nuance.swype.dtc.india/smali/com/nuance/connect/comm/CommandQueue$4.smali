.class Lcom/nuance/connect/comm/CommandQueue$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/comm/ConnectorCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/comm/CommandQueue;


# direct methods
.method constructor <init>(Lcom/nuance/connect/comm/CommandQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultDelay()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1600(Lcom/nuance/connect/comm/CommandQueue;)I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1500(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/MessageSendingBus;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/comm/MessageSendingBus;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1500(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/MessageSendingBus;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/comm/MessageSendingBus;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAccountInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1300(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;->onAccountInvalidated()V

    return-void
.end method

.method public onDeviceInvalidated()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v1}, Lcom/nuance/connect/comm/CommandQueue;->access$800(Lcom/nuance/connect/comm/CommandQueue;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v2}, Lcom/nuance/connect/comm/CommandQueue;->access$800(Lcom/nuance/connect/comm/CommandQueue;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;

    invoke-virtual {v0}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->getTransaction()Lcom/nuance/connect/comm/Transaction;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/nuance/connect/comm/Transaction;->onTransactionRejected(I)V

    invoke-virtual {v0}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->getTransaction()Lcom/nuance/connect/comm/Transaction;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/comm/Transaction;->onEndProcessing()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1300(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;->onDeviceInvalidated()V

    return-void
.end method

.method public onDownloadStatus(Lcom/nuance/connect/comm/Command;II)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1200(Lcom/nuance/connect/comm/CommandQueue;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/connect/comm/ResponseCallback;->onDownloadStatusResponse(Lcom/nuance/connect/comm/Command;II)V

    :cond_0
    return-void
.end method

.method public onFailure(Lcom/nuance/connect/comm/Command;ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$000(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "onFailure cmd="

    iget-object v2, p1, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    const-string/jumbo v3, "/"

    iget-object v4, p1, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1200(Lcom/nuance/connect/comm/CommandQueue;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ResponseCallback;->onFailure(Lcom/nuance/connect/comm/Command;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1300(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;->onConnectionStatus(ILjava/lang/String;)V

    return-void
.end method

.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .locals 5

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$000(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "onResponse cmd="

    iget-object v2, p1, Lcom/nuance/connect/comm/Response;->initialCommand:Lcom/nuance/connect/comm/Command;

    iget-object v2, v2, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    const-string/jumbo v3, "/"

    iget-object v4, p1, Lcom/nuance/connect/comm/Response;->initialCommand:Lcom/nuance/connect/comm/Command;

    iget-object v4, v4, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1200(Lcom/nuance/connect/comm/CommandQueue;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->initialCommand:Lcom/nuance/connect/comm/Command;

    iget-object v0, v0, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/nuance/connect/comm/Response;->fileLocation:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/nuance/connect/comm/Response;->fileLocation:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p1, Lcom/nuance/connect/comm/Response;->file:Ljava/io/File;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ResponseCallback;->onFileResponse(Lcom/nuance/connect/comm/Response;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    iget-object v0, v0, Lcom/nuance/connect/comm/CommandQueue;->responseListener:Lcom/nuance/connect/comm/ResponseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    iget-object v0, v0, Lcom/nuance/connect/comm/CommandQueue;->responseListener:Lcom/nuance/connect/comm/ResponseListener;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ResponseListener;->onResponse(Lcom/nuance/connect/comm/Response;)V

    goto :goto_0

    :cond_3
    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ResponseCallback;->onResponse(Lcom/nuance/connect/comm/Response;)V

    goto :goto_1
.end method

.method public onSessionInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1300(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;->onSessionInvalidated()V

    return-void
.end method

.method public onSuccess(Lcom/nuance/connect/comm/Command;)V
    .locals 9

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$000(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "onSuccess cmd="

    iget-object v2, p1, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    const-string/jumbo v3, "/"

    iget-object v4, p1, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    const-string/jumbo v5, " ("

    iget-object v6, p1, Lcom/nuance/connect/comm/Command;->thirdPartyURL:Ljava/lang/String;

    const-string/jumbo v7, ")"

    invoke-interface/range {v0 .. v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->thirdPartyURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1400(Lcom/nuance/connect/comm/CommandQueue;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1300(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-interface {v0, v8, v1}, Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;->onConnectionStatus(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0, v8}, Lcom/nuance/connect/comm/CommandQueue;->access$1402(Lcom/nuance/connect/comm/CommandQueue;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$600(Lcom/nuance/connect/comm/CommandQueue;)V

    goto :goto_0
.end method

.method public onUnlicensed(I)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1300(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;->onUnlicensed(I)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v1}, Lcom/nuance/connect/comm/CommandQueue;->access$800(Lcom/nuance/connect/comm/CommandQueue;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v2}, Lcom/nuance/connect/comm/CommandQueue;->access$800(Lcom/nuance/connect/comm/CommandQueue;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;

    invoke-virtual {v0}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->getTransaction()Lcom/nuance/connect/comm/Transaction;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/nuance/connect/comm/Transaction;->onTransactionRejected(I)V

    invoke-virtual {v0}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->getTransaction()Lcom/nuance/connect/comm/Transaction;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/comm/Transaction;->onEndProcessing()V

    goto :goto_1

    :cond_1
    return-void
.end method
