.class Lcom/nuance/connect/service/comm/SingleCommandTransaction;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/service/comm/ResponseCallback;
.implements Lcom/nuance/connect/service/comm/Transaction;


# instance fields
.field c:Lcom/nuance/connect/service/comm/Command;

.field downloadFilePath:Ljava/lang/String;

.field final name:Ljava/lang/String;

.field final requestType:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

.field final responder:Lcom/nuance/connect/service/comm/ResponseCallback;


# direct methods
.method public constructor <init>(Lcom/nuance/connect/service/comm/Command;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Command;->requestType:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    iput-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->requestType:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    iput-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/service/comm/ResponseCallback;

    iput-object p0, p1, Lcom/nuance/connect/service/comm/Command;->responseCallback:Lcom/nuance/connect/service/comm/ResponseCallback;

    return-void
.end method


# virtual methods
.method public allowDuplicates()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    iget-boolean v0, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    goto :goto_0
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->canceled:Z

    return-void
.end method

.method public createDownloadFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->downloadFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "temp"

    const-string v1, ".download"

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->downloadFilePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->downloadFilePath:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->downloadFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDownloadFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->downloadFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextCommand()Lcom/nuance/connect/service/comm/Command;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    iget-boolean v1, v1, Lcom/nuance/connect/service/comm/Command;->realTimeOnly:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    iget-boolean v1, v1, Lcom/nuance/connect/service/comm/Command;->realTimeEnabled:Z

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    iput-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    iget-boolean v1, v1, Lcom/nuance/connect/service/comm/Command;->canceled:Z

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    goto :goto_0
.end method

.method public getPriority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->requestType:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    return-object v0
.end method

.method public isSame(Lcom/nuance/connect/service/comm/Transaction;)Z
    .locals 2

    invoke-interface {p1}, Lcom/nuance/connect/service/comm/Transaction;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCancel(Lcom/nuance/connect/service/comm/Command;)V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/service/comm/ResponseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/service/comm/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/service/comm/ResponseCallback;->onCancel(Lcom/nuance/connect/service/comm/Command;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v1, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    throw v0
.end method

.method public onDownloadStatusResponse(Lcom/nuance/connect/service/comm/Command;II)V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/service/comm/ResponseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/service/comm/ResponseCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/connect/service/comm/ResponseCallback;->onDownloadStatusResponse(Lcom/nuance/connect/service/comm/Command;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v1, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    throw v0
.end method

.method public onEndProcessing()V
    .locals 0

    return-void
.end method

.method public onFailure(Lcom/nuance/connect/service/comm/Command;)V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/service/comm/ResponseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/service/comm/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/service/comm/ResponseCallback;->onFailure(Lcom/nuance/connect/service/comm/Command;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v1, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    throw v0
.end method

.method public onFileResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/service/comm/ResponseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/service/comm/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/service/comm/ResponseCallback;->onFileResponse(Lcom/nuance/connect/service/comm/Response;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v1, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    throw v0
.end method

.method public onIOExceptionResponse(Lcom/nuance/connect/service/comm/Command;)V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/service/comm/ResponseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/service/comm/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/service/comm/ResponseCallback;->onIOExceptionResponse(Lcom/nuance/connect/service/comm/Command;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v1, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    throw v0
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/service/comm/ResponseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/service/comm/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/service/comm/ResponseCallback;->onResponse(Lcom/nuance/connect/service/comm/Response;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v1, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    throw v0
.end method

.method public onRetry(Lcom/nuance/connect/service/comm/Command;IILjava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/service/comm/ResponseCallback;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/service/comm/ResponseCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/nuance/connect/service/comm/ResponseCallback;->onRetry(Lcom/nuance/connect/service/comm/Command;IILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :cond_0
    iput-object v2, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    :cond_1
    return v0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    iput-object p1, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    throw v0
.end method

.method public requiresDeviceId()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    iget-boolean v0, v0, Lcom/nuance/connect/service/comm/Command;->requireDevice:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    iget-boolean v0, v0, Lcom/nuance/connect/service/comm/Command;->needDevice:Z

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

    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    iget-boolean v0, v0, Lcom/nuance/connect/service/comm/Command;->requireSession:Z

    goto :goto_0
.end method

.method public wifiOnly()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/service/comm/Command;

    iget-boolean v0, v0, Lcom/nuance/connect/service/comm/Command;->wifiOnly:Z

    goto :goto_0
.end method
