.class Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$2;
.super Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$2;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    invoke-direct {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/comm/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$2;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;
    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->access$1502(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;Lcom/nuance/connect/comm/Command;)Lcom/nuance/connect/comm/Command;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$2;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$1400(Lcom/nuance/connect/service/manager/DlmSyncManager;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$2;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "    DLM Sync Disabled. Ignoring request."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$2;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "restoreRequestResponse core="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$2;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I
    invoke-static {v2}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->access$1600(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$2;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$400(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$2;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I
    invoke-static {v1}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->access$1600(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    iget-object v1, p1, Lcom/nuance/connect/comm/Response;->transactionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->setRestoreTransactionId(Ljava/lang/String;)V

    goto :goto_1e
.end method
