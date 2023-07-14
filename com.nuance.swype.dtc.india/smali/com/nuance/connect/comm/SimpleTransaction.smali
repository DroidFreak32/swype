.class public Lcom/nuance/connect/comm/SimpleTransaction;
.super Lcom/nuance/connect/comm/AbstractTransaction;

# interfaces
.implements Lcom/nuance/connect/comm/ResponseCallback;


# instance fields
.field protected canceled:Z

.field protected final commandQueue:[Lcom/nuance/connect/comm/Command;

.field protected downloadFilePath:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected requestType:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

.field protected responder:Lcom/nuance/connect/comm/ResponseCallback;


# direct methods
.method public constructor <init>(Lcom/nuance/connect/comm/Command;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/nuance/connect/comm/AbstractTransaction;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/comm/Command;

    iput-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->commandQueue:[Lcom/nuance/connect/comm/Command;

    iput-boolean v1, p0, Lcom/nuance/connect/comm/SimpleTransaction;->canceled:Z

    iput-object p1, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->commandQueue:[Lcom/nuance/connect/comm/Command;

    aput-object p1, v0, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->requestType:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    iput-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->requestType:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iget-object v0, v0, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    iput-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iput-object p0, v0, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    return-void
.end method


# virtual methods
.method public allowDuplicates()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iget-boolean v0, v0, Lcom/nuance/connect/comm/Command;->allowDuplicateOfCommand:Z

    goto :goto_0
.end method

.method public cancel()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/connect/comm/SimpleTransaction;->canceled:Z

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iput-boolean v1, v0, Lcom/nuance/connect/comm/Command;->canceled:Z

    :cond_0
    return-void
.end method

.method public createDownloadFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->downloadFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "temp"

    const-string/jumbo v1, ".download"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->downloadFilePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->downloadFilePath:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Unable to create file for download transaction"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextCommand()Lcom/nuance/connect/comm/Command;
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/nuance/connect/comm/SimpleTransaction;->canceled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/comm/SimpleTransaction;->commandQueue:[Lcom/nuance/connect/comm/Command;

    aput-object v0, v1, v2

    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/comm/SimpleTransaction;->commandQueue:[Lcom/nuance/connect/comm/Command;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iget-object v1, p0, Lcom/nuance/connect/comm/SimpleTransaction;->commandQueue:[Lcom/nuance/connect/comm/Command;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iget-boolean v1, v1, Lcom/nuance/connect/comm/Command;->canceled:Z

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iget-object v0, v0, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    if-eq v0, p0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iget-object v0, v0, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    iput-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iput-object p0, v0, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    :cond_2
    return-object v0
.end method

.method public getPriority()I
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->requestType:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    sget-object v1, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->requestType:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    sget-object v1, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v0, 0xa

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->requestType:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    return-object v0
.end method

.method public onCancel(Lcom/nuance/connect/comm/Command;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ResponseCallback;->onCancel(Lcom/nuance/connect/comm/Command;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/connect/comm/SimpleTransaction;->rollback()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/nuance/connect/comm/SimpleTransaction;->rollback()V

    throw v0
.end method

.method public onDownloadStatusResponse(Lcom/nuance/connect/comm/Command;II)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/connect/comm/ResponseCallback;->onDownloadStatusResponse(Lcom/nuance/connect/comm/Command;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public onFailure(Lcom/nuance/connect/comm/Command;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ResponseCallback;->onFailure(Lcom/nuance/connect/comm/Command;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/connect/comm/SimpleTransaction;->rollback()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/nuance/connect/comm/SimpleTransaction;->rollback()V

    throw v0
.end method

.method public onFileResponse(Lcom/nuance/connect/comm/Response;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ResponseCallback;->onFileResponse(Lcom/nuance/connect/comm/Response;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->commandQueue:[Lcom/nuance/connect/comm/Command;

    aput-object v2, v0, v3

    iput-object v2, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/comm/SimpleTransaction;->commandQueue:[Lcom/nuance/connect/comm/Command;

    aput-object v2, v1, v3

    iput-object v2, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    throw v0
.end method

.method public onIOExceptionResponse(Lcom/nuance/connect/comm/Command;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ResponseCallback;->onIOExceptionResponse(Lcom/nuance/connect/comm/Command;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/connect/comm/SimpleTransaction;->rollback()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/nuance/connect/comm/SimpleTransaction;->rollback()V

    throw v0
.end method

.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ResponseCallback;->onResponse(Lcom/nuance/connect/comm/Response;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->commandQueue:[Lcom/nuance/connect/comm/Command;

    aput-object v2, v0, v3

    iput-object v2, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/comm/SimpleTransaction;->commandQueue:[Lcom/nuance/connect/comm/Command;

    aput-object v2, v1, v3

    iput-object v2, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    throw v0
.end method

.method public onRetry(Lcom/nuance/connect/comm/Command;IILjava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->processingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/nuance/connect/comm/SimpleTransaction;->commandQueue:[Lcom/nuance/connect/comm/Command;

    aput-object v3, v2, v1

    iput-object v3, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    :goto_1
    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/nuance/connect/comm/ResponseCallback;->onRetry(Lcom/nuance/connect/comm/Command;IILjava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/nuance/connect/comm/SimpleTransaction;->getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    move-result-object v0

    sget-object v2, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    if-ne v0, v2, :cond_2

    if-nez p2, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->retryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/connect/comm/SimpleTransaction;->commandQueue:[Lcom/nuance/connect/comm/Command;

    iget-object v3, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    aput-object v3, v2, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/nuance/connect/comm/SimpleTransaction;->commandQueue:[Lcom/nuance/connect/comm/Command;

    aput-object v3, v2, v1

    iput-object v3, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    throw v0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public requiresDeviceId()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iget-boolean v0, v0, Lcom/nuance/connect/comm/Command;->requireDevice:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iget-boolean v0, v0, Lcom/nuance/connect/comm/Command;->needDevice:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requiresSessionId()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iget-boolean v0, v0, Lcom/nuance/connect/comm/Command;->requireSession:Z

    goto :goto_0
.end method

.method public rollback()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->commandQueue:[Lcom/nuance/connect/comm/Command;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    iput-object v2, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-void
.end method

.method public wifiOnly()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/comm/SimpleTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    iget-boolean v0, v0, Lcom/nuance/connect/comm/Command;->wifiOnly:Z

    goto :goto_0
.end method
