.class Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$3;
.super Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$3;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    invoke-direct {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/comm/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 10

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$3;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    # setter for: Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;
    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->access$1702(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;Lcom/nuance/connect/comm/Command;)Lcom/nuance/connect/comm/Command;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$3;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->dlmEnabled:Z
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$1400(Lcom/nuance/connect/service/manager/DlmSyncManager;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$3;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "    DLM Sync Disabled. Ignoring request."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :goto_1e
    return-void

    :cond_1f
    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2a

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$3;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    # invokes: Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->resetRestore()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->access$1800(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)V

    goto :goto_1e

    :cond_2a
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$3;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "restoreGetResponse coreId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$3;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I
    invoke-static {v3}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->access$1600(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$3;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->categoriesInUse:Ljava/util/Set;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$700(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$3;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I
    invoke-static {v2}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->access$1600(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$3;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Ignoring restore response because the current category has not been used. cat="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$3;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I
    invoke-static {v2}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->access$1600(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$3;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    # invokes: Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->resetRestore()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->access$1800(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)V

    goto :goto_1e

    :cond_8a
    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v2, "87"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$3;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v2}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "restoreGetResponse numEvents="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :try_start_b4
    const-string/jumbo v2, "temp"

    const-string/jumbo v3, ".batch"

    iget-object v4, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$3;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v4, v4, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    iget-object v4, v4, Lcom/nuance/connect/service/manager/DlmSyncManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v4}, Lcom/nuance/connect/service/ConnectClient;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_c7} :catch_10e

    move-result-object v5

    :try_start_c8
    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_d5
    .catchall {:try_start_c8 .. :try_end_d5} :catchall_155

    :try_start_d5
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_da
    .catchall {:try_start_d5 .. :try_end_da} :catchall_158

    const/4 v1, 0x0

    move v4, v1

    :goto_dc
    :try_start_dc
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_df
    .catchall {:try_start_dc .. :try_end_df} :catchall_100

    move-result v1

    if-ge v4, v1, :cond_13a

    :try_start_e2
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_ec
    .catch Lorg/json/JSONException; {:try_start_e2 .. :try_end_ec} :catch_f0
    .catchall {:try_start_e2 .. :try_end_ec} :catchall_100

    :goto_ec
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_dc

    :catch_f0
    move-exception v1

    :try_start_f1
    iget-object v6, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$3;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v6, v6, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v6}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v6

    const-string/jumbo v7, "processRestoreGetResponse() Issue loading object: "

    invoke-interface {v6, v7, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_ff
    .catchall {:try_start_f1 .. :try_end_ff} :catchall_100

    goto :goto_ec

    :catchall_100
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    :goto_103
    if-eqz v1, :cond_108

    :try_start_105
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :cond_108
    if-eqz v2, :cond_10d

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    :cond_10d
    throw v0
    :try_end_10e
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_10e} :catch_10e

    :catch_10e
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$3;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v2, "restoreGetResponse() error creating temp file"

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_11d
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$3;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$400(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$3;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I
    invoke-static {v1}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->access$1600(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreComplete()V

    goto/16 :goto_1e

    :cond_13a
    :try_start_13a
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$3;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$3;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->coreId:I
    invoke-static {v1}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->access$1600(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)I

    move-result v1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/nuance/connect/service/manager/DlmSyncManager;->sendRestoreEvents(ILjava/lang/String;)V
    invoke-static {v0, v1, v4}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$1900(Lcom/nuance/connect/service/manager/DlmSyncManager;ILjava/lang/String;)V
    :try_end_14e
    .catchall {:try_start_13a .. :try_end_14e} :catchall_100

    :try_start_14e
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_154
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_154} :catch_10e

    goto :goto_11d

    :catchall_155
    move-exception v0

    move-object v2, v1

    goto :goto_103

    :catchall_158
    move-exception v0

    move-object v2, v3

    goto :goto_103
.end method

.method public onRetry(Lcom/nuance/connect/comm/Command;IILjava/lang/String;)Z
    .registers 8

    const/4 v2, 0x3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->onRetry(Lcom/nuance/connect/comm/Command;IILjava/lang/String;)Z

    move-result v0

    if-ne p3, v2, :cond_13

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction$3;->this$1:Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->retryCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;->access$2000(Lcom/nuance/connect/service/manager/DlmSyncManager$SyncTransaction;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lt v1, v2, :cond_15

    :cond_13
    if-eqz v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method
