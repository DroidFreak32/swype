.class Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction$1;
.super Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction$1;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/service/manager/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onDownloadStatusResponse(Lcom/nuance/connect/service/comm/Command;II)V
    .locals 3

    if-ltz p2, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction$1;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->access$1400(Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;)Lcom/nuance/connect/service/manager/CategoryManager;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "download"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isCommandFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction$1;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->access$1400(Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;)Lcom/nuance/connect/service/manager/CategoryManager;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction$1;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;

    invoke-static {v2}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->access$1500(Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$1600(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction$1;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->access$1400(Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;)Lcom/nuance/connect/service/manager/CategoryManager;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SETTINGS_REFRESH:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction$1;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->rollback()V

    goto :goto_0
.end method

.method public onFileResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction$1;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;

    invoke-static {v0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->access$1300(Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;Lcom/nuance/connect/service/comm/Response;)V

    return-void
.end method

.method public onIOExceptionResponse(Lcom/nuance/connect/service/comm/Command;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction$1;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->access$1700(Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;)V

    invoke-super {p0, p1}, Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;->onIOExceptionResponse(Lcom/nuance/connect/service/comm/Command;)V

    return-void
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction$1;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;->access$1200(Lcom/nuance/connect/service/manager/CategoryManager$CategoryDownloadTransaction;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "Error"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shouldn\'t get here!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
