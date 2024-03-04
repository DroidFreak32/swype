.class Lcom/nuance/connect/service/comm/CommandQueue$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/service/comm/ConnectorCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/comm/CommandQueue;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/comm/CommandQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultDelay()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$100(Lcom/nuance/connect/service/comm/CommandQueue;)I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1600(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$2200(Lcom/nuance/connect/service/comm/CommandQueue;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1600(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAccountInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1600(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->invalidAccount()V

    return-void
.end method

.method public onCancel(Lcom/nuance/connect/service/comm/Command;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1500(Lcom/nuance/connect/service/comm/CommandQueue;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/service/comm/ResponseCallback;->onCancel(Lcom/nuance/connect/service/comm/Command;)V

    :cond_0
    return-void
.end method

.method public onDeviceInvalidated()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1600(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->resetDevice()V

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1600(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->resetSession(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1600(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DEREGISTER:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;)V

    return-void
.end method

.method public onDownloadStatus(Lcom/nuance/connect/service/comm/Command;II)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1500(Lcom/nuance/connect/service/comm/CommandQueue;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/connect/service/comm/ResponseCallback;->onDownloadStatusResponse(Lcom/nuance/connect/service/comm/Command;II)V

    :cond_0
    return-void
.end method

.method public onFailure(Lcom/nuance/connect/service/comm/Command;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1500(Lcom/nuance/connect/service/comm/CommandQueue;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/service/comm/ResponseCallback;->onFailure(Lcom/nuance/connect/service/comm/Command;)V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "status"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "message"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v1}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1600(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CONNECTION_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    return-void
.end method

.method public onIOException(Lcom/nuance/connect/service/comm/Command;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1500(Lcom/nuance/connect/service/comm/CommandQueue;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/service/comm/ResponseCallback;->onIOExceptionResponse(Lcom/nuance/connect/service/comm/Command;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1500(Lcom/nuance/connect/service/comm/CommandQueue;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v0, v0, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Response;->fileLocation:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Response;->fileLocation:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p1, Lcom/nuance/connect/service/comm/Response;->file:Ljava/io/File;

    invoke-interface {v0, p1}, Lcom/nuance/connect/service/comm/ResponseCallback;->onFileResponse(Lcom/nuance/connect/service/comm/Response;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    iget-object v0, v0, Lcom/nuance/connect/service/comm/CommandQueue;->responseListener:Lcom/nuance/connect/service/ConnectClient$ResponseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    iget-object v0, v0, Lcom/nuance/connect/service/comm/CommandQueue;->responseListener:Lcom/nuance/connect/service/ConnectClient$ResponseListener;

    invoke-interface {v0, p1}, Lcom/nuance/connect/service/ConnectClient$ResponseListener;->onResponse(Lcom/nuance/connect/service/comm/Response;)V

    goto :goto_0

    :cond_3
    invoke-interface {v0, p1}, Lcom/nuance/connect/service/comm/ResponseCallback;->onResponse(Lcom/nuance/connect/service/comm/Response;)V

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$600(Lcom/nuance/connect/service/comm/CommandQueue;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.nuance.connect.service.ConnectClient."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v2, v2, Lcom/nuance/connect/service/comm/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v2, v2, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1600(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$000(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v2, "Broadcast: "

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onRetry(Lcom/nuance/connect/service/comm/Command;IILjava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1500(Lcom/nuance/connect/service/comm/CommandQueue;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    if-eqz v0, :cond_2

    if-lez p2, :cond_1

    move v0, p2

    :goto_0
    iget-object v2, p1, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    invoke-interface {v2, p1, v0, p3, p4}, Lcom/nuance/connect/service/comm/ResponseCallback;->onRetry(Lcom/nuance/connect/service/comm/Command;IILjava/lang/String;)Z

    move-result v0

    :goto_1
    iget-object v2, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v2}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1800(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "delay"

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "status"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "message"

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v3}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1800(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v1}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1600(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v1

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CONNECTION_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v3, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    return v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1700(Lcom/nuance/connect/service/comm/CommandQueue;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public onSessionInvalidated()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1600(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->resetSession(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/nuance/connect/service/comm/Command;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$500(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->resume()V

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1900(Lcom/nuance/connect/service/comm/CommandQueue;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "status"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "message"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v1}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1600(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CONNECTION_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0, v4}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1902(Lcom/nuance/connect/service/comm/CommandQueue;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$2000(Lcom/nuance/connect/service/comm/CommandQueue;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0, v3}, Lcom/nuance/connect/service/comm/CommandQueue;->access$2102(Lcom/nuance/connect/service/comm/CommandQueue;I)I

    return-void
.end method

.method public onUnlicensed(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1600(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/ConnectClient;->onUnlicensed(I)V

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1200(Lcom/nuance/connect/service/comm/CommandQueue;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onValidateDeviceProperties(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1500(Lcom/nuance/connect/service/comm/CommandQueue;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1400(Lcom/nuance/connect/service/comm/CommandQueue;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_VALIDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$6;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v1}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1400(Lcom/nuance/connect/service/comm/CommandQueue;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
