.class Lcom/nuance/connect/internal/SyncServiceInternal$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/internal/ConnectHandler;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/SyncServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/SyncServiceInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .locals 1

    const-string v0, "SyncHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 3

    invoke-static {}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$400()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$400()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    invoke-static {}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$400()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 6

    const/4 v1, 0x0

    sget-object v0, Lcom/nuance/connect/internal/SyncServiceInternal$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v2, p2, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$000(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v2, "MESSAGE_DLM_RECEIVED_EVENTS"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "DLM_EVENT_COUNT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "DLM_EVENT_CORE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    new-array v0, v1, [Lcom/nuance/connect/api/SyncService$DLMSyncCallback;

    iget-object v4, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-static {v4}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$100(Lcom/nuance/connect/internal/SyncServiceInternal;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-static {v5}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$100(Lcom/nuance/connect/internal/SyncServiceInternal;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/api/SyncService$DLMSyncCallback;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v4, v0

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    invoke-interface {v5, v3, v2}, Lcom/nuance/connect/api/SyncService$DLMSyncCallback;->receivedEvents(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$000(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "MESSAGE_HOST_DLM_BACKUP_REQUEST"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$200(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->DLM:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/DLMConnectorInternal;

    iget-object v1, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/SyncServiceInternal;->dlmSyncEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$000(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "The dlm is not available or is not enabled."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "DLM_EVENT_CORE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->backupDlm(I)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$000(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v2, "MESSAGE_HOST_DLM_BACKUP_COMPLETE"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "DLM_EVENT_CORE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    new-array v0, v1, [Lcom/nuance/connect/api/SyncService$DLMSyncCallback;

    iget-object v4, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-static {v4}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$100(Lcom/nuance/connect/internal/SyncServiceInternal;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    :try_start_1
    iget-object v5, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-static {v5}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$100(Lcom/nuance/connect/internal/SyncServiceInternal;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/api/SyncService$DLMSyncCallback;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    array-length v4, v0

    :goto_2
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    invoke-interface {v5, v3, v2}, Lcom/nuance/connect/api/SyncService$DLMSyncCallback;->backupOccurred(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    :pswitch_3
    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$000(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "MESSAGE_HOST_DLM_RESTORE"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$200(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->DLM:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/DLMConnectorInternal;

    iget-object v1, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/SyncServiceInternal;->dlmSyncEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "DLM_EVENT_FILE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$000(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "No events file found"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    const-string v3, "DLM_EVENT_CORE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v3, Lcom/nuance/connect/internal/SyncServiceInternal$1$1;

    invoke-direct {v3, p0, v1}, Lcom/nuance/connect/internal/SyncServiceInternal$1$1;-><init>(Lcom/nuance/connect/internal/SyncServiceInternal$1;I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/internal/DLMConnectorInternal;->restoreDlm(ILjava/lang/String;Lcom/nuance/connect/api/DLMConnector$EventNotificationCallback;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$000(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "MESSAGE_HOST_GET_DLM_STATUS"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$300(Lcom/nuance/connect/internal/SyncServiceInternal;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$000(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v2, "MESSAGE_HOST_DLM_PUSH_COMPLETE"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "DLM_EVENT_CORE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    new-array v0, v1, [Lcom/nuance/connect/api/SyncService$DLMSyncCallback;

    iget-object v4, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-static {v4}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$100(Lcom/nuance/connect/internal/SyncServiceInternal;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    :try_start_2
    iget-object v5, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-static {v5}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$100(Lcom/nuance/connect/internal/SyncServiceInternal;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/api/SyncService$DLMSyncCallback;

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    array-length v4, v0

    :goto_3
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    invoke-interface {v5, v3, v2}, Lcom/nuance/connect/api/SyncService$DLMSyncCallback;->sentEvents(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catchall_2
    move-exception v0

    monitor-exit v4

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPostUpgrade()V
    .locals 0

    return-void
.end method
