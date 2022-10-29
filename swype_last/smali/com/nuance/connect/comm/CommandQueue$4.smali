.class Lcom/nuance/connect/comm/CommandQueue$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/comm/ConnectorCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/comm/CommandQueue;


# direct methods
.method constructor <init>(Lcom/nuance/connect/comm/CommandQueue;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultDelay()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->defaultDelaySeconds:I
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1600(Lcom/nuance/connect/comm/CommandQueue;)I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->client:Lcom/nuance/connect/comm/MessageSendingBus;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1500(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/MessageSendingBus;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/comm/MessageSendingBus;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->client:Lcom/nuance/connect/comm/MessageSendingBus;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1500(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/MessageSendingBus;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/comm/MessageSendingBus;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAccountInvalidated()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->commandQueueErrorCallback:Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1300(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;->onAccountInvalidated()V

    return-void
.end method

.method public onDeviceInvalidated()V
    .registers 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->activeTransactions:Ljava/util/List;
    invoke-static {v1}, Lcom/nuance/connect/comm/CommandQueue;->access$800(Lcom/nuance/connect/comm/CommandQueue;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_c
    iget-object v2, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->activeTransactions:Ljava/util/List;
    invoke-static {v2}, Lcom/nuance/connect/comm/CommandQueue;->access$800(Lcom/nuance/connect/comm/CommandQueue;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_16

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_27

    throw v0

    :cond_2a
    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_27

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

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

    goto :goto_2f

    :cond_4b
    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->commandQueueErrorCallback:Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1300(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;->onDeviceInvalidated()V

    return-void
.end method

.method public onDownloadStatus(Lcom/nuance/connect/comm/Command;II)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->active:Z
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1200(Lcom/nuance/connect/comm/CommandQueue;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v0, :cond_11

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/connect/comm/ResponseCallback;->onDownloadStatusResponse(Lcom/nuance/connect/comm/Command;II)V

    :cond_11
    return-void
.end method

.method public onFailure(Lcom/nuance/connect/comm/Command;ILjava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$000(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "onFailure cmd="

    iget-object v2, p1, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    const-string/jumbo v3, "/"

    iget-object v4, p1, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->active:Z
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1200(Lcom/nuance/connect/comm/CommandQueue;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v0, :cond_24

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ResponseCallback;->onFailure(Lcom/nuance/connect/comm/Command;)V

    :cond_24
    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->commandQueueErrorCallback:Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1300(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;->onConnectionStatus(ILjava/lang/String;)V

    return-void
.end method

.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 7

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;
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

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->active:Z
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1200(Lcom/nuance/connect/comm/CommandQueue;)Z

    move-result v0

    if-nez v0, :cond_20

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->initialCommand:Lcom/nuance/connect/comm/Command;

    iget-object v0, v0, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v0, :cond_36

    iget-object v1, p1, Lcom/nuance/connect/comm/Response;->fileLocation:Ljava/lang/String;

    if-eqz v1, :cond_44

    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/nuance/connect/comm/Response;->fileLocation:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p1, Lcom/nuance/connect/comm/Response;->file:Ljava/io/File;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ResponseCallback;->onFileResponse(Lcom/nuance/connect/comm/Response;)V

    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    iget-object v0, v0, Lcom/nuance/connect/comm/CommandQueue;->responseListener:Lcom/nuance/connect/comm/ResponseListener;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    iget-object v0, v0, Lcom/nuance/connect/comm/CommandQueue;->responseListener:Lcom/nuance/connect/comm/ResponseListener;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ResponseListener;->onResponse(Lcom/nuance/connect/comm/Response;)V

    goto :goto_1f

    :cond_44
    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ResponseCallback;->onResponse(Lcom/nuance/connect/comm/Response;)V

    goto :goto_36
.end method

.method public onSessionInvalidated()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->commandQueueErrorCallback:Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1300(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;->onSessionInvalidated()V

    return-void
.end method

.method public onSuccess(Lcom/nuance/connect/comm/Command;)V
    .registers 11

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;
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

    if-eqz v0, :cond_21

    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->goodConnection:Z
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1400(Lcom/nuance/connect/comm/CommandQueue;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->commandQueueErrorCallback:Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1300(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-interface {v0, v8, v1}, Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;->onConnectionStatus(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # setter for: Lcom/nuance/connect/comm/CommandQueue;->goodConnection:Z
    invoke-static {v0, v8}, Lcom/nuance/connect/comm/CommandQueue;->access$1402(Lcom/nuance/connect/comm/CommandQueue;Z)Z

    :cond_3a
    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # invokes: Lcom/nuance/connect/comm/CommandQueue;->resetTimers()V
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$600(Lcom/nuance/connect/comm/CommandQueue;)V

    goto :goto_20
.end method

.method public onUnlicensed(I)V
    .registers 6

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->commandQueueErrorCallback:Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;
    invoke-static {v0}, Lcom/nuance/connect/comm/CommandQueue;->access$1300(Lcom/nuance/connect/comm/CommandQueue;)Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;->onUnlicensed(I)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->activeTransactions:Ljava/util/List;
    invoke-static {v1}, Lcom/nuance/connect/comm/CommandQueue;->access$800(Lcom/nuance/connect/comm/CommandQueue;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_15
    iget-object v2, p0, Lcom/nuance/connect/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/comm/CommandQueue;->activeTransactions:Ljava/util/List;
    invoke-static {v2}, Lcom/nuance/connect/comm/CommandQueue;->access$800(Lcom/nuance/connect/comm/CommandQueue;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1f

    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_15 .. :try_end_32} :catchall_30

    throw v0

    :cond_33
    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_30

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

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

    goto :goto_38

    :cond_54
    return-void
.end method
