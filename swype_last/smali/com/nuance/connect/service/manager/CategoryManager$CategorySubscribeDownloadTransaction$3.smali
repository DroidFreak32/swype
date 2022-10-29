.class Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$3;
.super Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    invoke-direct {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/comm/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onIOExceptionResponse(Lcom/nuance/connect/comm/Command;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->access$1400(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "onIOExceptionResponse()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->failureType:I
    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->access$1702(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;I)I

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    const-string/jumbo v1, "Unable to complete download due to IOException."

    # setter for: Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->failureMessage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->access$1802(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->rollback()V

    invoke-super {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->onIOExceptionResponse(Lcom/nuance/connect/comm/Command;)V

    return-void
.end method

.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    # invokes: Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->ackResponse(Lcom/nuance/connect/comm/Response;)V
    invoke-static {v0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->access$1900(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;Lcom/nuance/connect/comm/Response;)V

    return-void
.end method

.method public onRetry(Lcom/nuance/connect/comm/Command;IILjava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->onRetry(Lcom/nuance/connect/comm/Command;IILjava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    move-result-object v2

    sget-object v3, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    invoke-virtual {v2, v3}, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    # setter for: Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->failureType:I
    invoke-static {v1, v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->access$1702(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;I)I

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    const-string/jumbo v2, "Unable to complete download. Fast failing user requested transaction."

    # setter for: Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->failureMessage:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->access$1802(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$3;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    invoke-virtual {v1}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->rollback()V

    :goto_25
    return v0

    :cond_26
    move v0, v1

    goto :goto_25
.end method
