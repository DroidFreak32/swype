.class Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon$2;
.super Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;Ljava/lang/String;Lcom/nuance/connect/service/manager/CategoryManager;)V
    .registers 4

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    invoke-direct {p0, p2, p3}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;-><init>(Ljava/lang/String;Lcom/nuance/connect/service/manager/CategoryManager;)V

    return-void
.end method


# virtual methods
.method public getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;
    .registers 2

    sget-object v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    return-object v0
.end method

.method onCancelAck()V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    # getter for: Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->parent:Lcom/nuance/connect/service/manager/CategoryManager;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->access$100(Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;)Lcom/nuance/connect/service/manager/CategoryManager;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_DOWNLOAD_CANCEL_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon$2;->catDb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    return-void
.end method

.method onDownloadStatus(I)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "download"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "total"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "dictionary"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon$2;->catDb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "CATEGORY_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    # getter for: Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->parent:Lcom/nuance/connect/service/manager/CategoryManager;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->access$100(Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;)Lcom/nuance/connect/service/manager/CategoryManager;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_DOWNLOAD_PROGRESS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    return-void
.end method

.method onFailedTransaction(ILjava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "DEFAULT_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "PROP_CATEGORY_ID"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon$2;->catDb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    # getter for: Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->parent:Lcom/nuance/connect/service/manager/CategoryManager;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->access$100(Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;)Lcom/nuance/connect/service/manager/CategoryManager;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_DOWNLOAD_FAILED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    return-void
.end method

.method onSuccess(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon$2;->catDb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerChineseAddon;->install(Ljava/lang/String;)Z

    return-void
.end method

.method onTransactionStarted()V
    .registers 1

    return-void
.end method
