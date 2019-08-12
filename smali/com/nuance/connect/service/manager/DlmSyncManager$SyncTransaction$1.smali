.class Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$1;
.super Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

.field final synthetic val$backupFile:Ljava/lang/String;

.field final synthetic val$coreId:I

.field final synthetic val$count:I

.field final synthetic val$this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;Lcom/nuance/connect/service/manager/DlmSyncManager;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$1;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iput-object p2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$1;->val$this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    iput-object p3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$1;->val$backupFile:Ljava/lang/String;

    iput p4, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$1;->val$coreId:I

    iput p5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$1;->val$count:I

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/service/manager/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$1;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->access$1102(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;Lcom/nuance/connect/service/comm/Command;)Lcom/nuance/connect/service/comm/Command;

    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$1;->val$backupFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/connect/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$1;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processBackupResponse cat="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$1;->val$coreId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$1;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$300(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$1;->val$coreId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupComplete()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DEFAULT_KEY"

    iget v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$1;->val$count:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "DLM_EVENT_CORE"

    iget v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$1;->val$coreId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$1;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/DlmSyncManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DLM_BACKUP_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$1;->rollback()V

    goto :goto_0
.end method

.method public rollback()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$1;->val$backupFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/connect/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$1;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->access$1102(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;Lcom/nuance/connect/service/comm/Command;)Lcom/nuance/connect/service/comm/Command;

    return-void
.end method
