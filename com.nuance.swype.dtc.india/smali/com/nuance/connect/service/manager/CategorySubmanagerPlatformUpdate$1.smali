.class Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate$1;
.super Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;Ljava/lang/String;Lcom/nuance/connect/service/manager/CategoryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;

    invoke-direct {p0, p2, p3}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;-><init>(Ljava/lang/String;Lcom/nuance/connect/service/manager/CategoryManager;)V

    return-void
.end method


# virtual methods
.method public getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;
    .locals 1

    sget-object v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    return-object v0
.end method

.method onCancelAck()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->access$002(Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;)Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->access$100(Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;)Lcom/nuance/connect/service/manager/CategoryManager;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_PLATFORM_UPDATE_CANCEL_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    return-void
.end method

.method onDownloadStatus(I)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->access$100(Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;)Lcom/nuance/connect/service/manager/CategoryManager;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_PLATFORM_UPDATE_PROGRESS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    return-void
.end method

.method onFailedTransaction(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->access$002(Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;)Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->access$100(Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;)Lcom/nuance/connect/service/manager/CategoryManager;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_PLATFORM_UPDATE_DOWNLOAD_FAILED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    return-void
.end method

.method onSuccess(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->access$002(Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;)Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->access$100(Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;)Lcom/nuance/connect/service/manager/CategoryManager;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_PLATFORM_UPDATE_INSTALL_READY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    return-void
.end method

.method onTransactionStarted()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;->access$100(Lcom/nuance/connect/service/manager/CategorySubmanagerPlatformUpdate;)Lcom/nuance/connect/service/manager/CategoryManager;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_PLATFORM_UPDATE_PROGRESS:Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    return-void
.end method
