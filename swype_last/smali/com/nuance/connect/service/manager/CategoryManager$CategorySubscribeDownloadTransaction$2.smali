.class Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$2;
.super Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    invoke-direct {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/comm/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onDownloadStatusResponse(Lcom/nuance/connect/comm/Command;II)V
    .registers 7

    if-ltz p2, :cond_20

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->categoryManager:Lcom/nuance/connect/service/manager/CategoryManager;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->access$1600(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;)Lcom/nuance/connect/service/manager/CategoryManager;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "download"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isCommandFor(Ljava/lang/String;Lcom/nuance/connect/comm/Command;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/high16 v0, 0x42c80000    # 100.0f

    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->onDownloadStatus(I)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    const/4 v1, 0x6

    # setter for: Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->failureType:I
    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->access$1702(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;I)I

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    const-string/jumbo v1, "Unable to complete download due to disk full error."

    # setter for: Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->failureMessage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->access$1802(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->rollback()V

    goto :goto_1f
.end method

.method public onFileResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    # invokes: Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->downloadResponse(Lcom/nuance/connect/comm/Response;)V
    invoke-static {v0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->access$1500(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;Lcom/nuance/connect/comm/Response;)V

    return-void
.end method

.method public onIOExceptionResponse(Lcom/nuance/connect/comm/Command;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->failureType:I
    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->access$1702(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;I)I

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    const-string/jumbo v1, "Unable to complete download due to IOException."

    # setter for: Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->failureMessage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->access$1802(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->rollback()V

    invoke-super {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->onIOExceptionResponse(Lcom/nuance/connect/comm/Command;)V

    return-void
.end method

.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->access$1400(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Error"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Shouldn\'t get here!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onRetry(Lcom/nuance/connect/comm/Command;IILjava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->onRetry(Lcom/nuance/connect/comm/Command;IILjava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    move-result-object v2

    sget-object v3, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    invoke-virtual {v2, v3}, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    # setter for: Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->failureType:I
    invoke-static {v1, v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->access$1702(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;I)I

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    const-string/jumbo v2, "Unable to complete download. Fast failing user requested transaction."

    # setter for: Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->failureMessage:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->access$1802(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$2;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    invoke-virtual {v1}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->rollback()V

    :goto_25
    return v0

    :cond_26
    move v0, v1

    goto :goto_25
.end method
