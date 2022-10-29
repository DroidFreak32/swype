.class Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction$1;
.super Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;

    invoke-direct {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/comm/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/nuance/connect/comm/Command;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->cleanupFailedTransaction()V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;
    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->access$2602(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;Lcom/nuance/connect/comm/Command;)Lcom/nuance/connect/comm/Command;

    return-void
.end method

.method public onFailure(Lcom/nuance/connect/comm/Command;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->cleanupFailedTransaction()V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;
    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->access$2702(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;Lcom/nuance/connect/comm/Command;)Lcom/nuance/connect/comm/Command;

    return-void
.end method

.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 4

    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    packed-switch v0, :pswitch_data_34

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->cleanupFailedTransaction()V

    :goto_a
    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;
    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->access$2502(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;Lcom/nuance/connect/comm/Command;)Lcom/nuance/connect/comm/Command;

    return-void

    :pswitch_11
    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;

    iget-object v0, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->dataStore:Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$2300(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;

    iget v1, v1, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->fromRowId:I

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->deletePredictionsFrom(I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;

    iget-object v0, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;

    iget-object v1, v1, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionLoggingTransaction;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->dataStore:Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;
    invoke-static {v1}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$2300(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->getPendingLogSize()I

    move-result v1

    # setter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->pendingLogsSize:I
    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$2402(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;I)I

    goto :goto_a

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_11
    .end packed-switch
.end method
