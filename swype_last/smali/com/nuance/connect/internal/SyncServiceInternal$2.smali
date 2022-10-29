.class Lcom/nuance/connect/internal/SyncServiceInternal$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/internal/ConnectHandler;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/SyncServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/SyncServiceInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/SyncServiceInternal$2;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "SyncHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .registers 4

    # getter for: Lcom/nuance/connect/internal/SyncServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$600()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_8
    # getter for: Lcom/nuance/connect/internal/SyncServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$600()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    # getter for: Lcom/nuance/connect/internal/SyncServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$600()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1e
    return-object v1
.end method

.method public handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .registers 9

    const/4 v0, 0x0

    sget-object v1, Lcom/nuance/connect/internal/SyncServiceInternal$3;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v2, p2, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_150

    :cond_12
    :goto_12
    return-void

    :pswitch_13
    iget-object v1, p0, Lcom/nuance/connect/internal/SyncServiceInternal$2;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    # getter for: Lcom/nuance/connect/internal/SyncServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v1}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$300(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v2, "MESSAGE_DLM_RECEIVED_EVENTS"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "DLM_EVENT_COUNT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "DLM_EVENT_CORE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/nuance/connect/internal/SyncServiceInternal$2;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    # invokes: Lcom/nuance/connect/internal/SyncServiceInternal;->getCallbacks()[Lcom/nuance/connect/api/SyncService$DLMSyncCallback;
    invoke-static {v3}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$400(Lcom/nuance/connect/internal/SyncServiceInternal;)[Lcom/nuance/connect/api/SyncService$DLMSyncCallback;

    move-result-object v3

    array-length v4, v3

    :goto_3c
    if-ge v0, v4, :cond_12

    aget-object v5, v3, v0

    invoke-interface {v5, v2, v1}, Lcom/nuance/connect/api/SyncService$DLMSyncCallback;->receivedEvents(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :pswitch_46
    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal$2;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    # getter for: Lcom/nuance/connect/internal/SyncServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$300(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "MESSAGE_HOST_DLM_BACKUP_REQUEST"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal$2;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    # getter for: Lcom/nuance/connect/internal/SyncServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$500(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->DLM:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/DLMConnectorInternal;

    iget-object v1, p0, Lcom/nuance/connect/internal/SyncServiceInternal$2;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/SyncServiceInternal;->dlmSyncEnabled()Z

    move-result v1

    if-eqz v1, :cond_6a

    if-nez v0, :cond_77

    :cond_6a
    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal$2;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    # getter for: Lcom/nuance/connect/internal/SyncServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$300(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "The dlm is not available or is not enabled."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_12

    :cond_77
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "DLM_EVENT_CORE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->backupDlm(I)Z

    goto :goto_12

    :pswitch_86
    iget-object v1, p0, Lcom/nuance/connect/internal/SyncServiceInternal$2;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    # getter for: Lcom/nuance/connect/internal/SyncServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v1}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$300(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v2, "MESSAGE_HOST_DLM_BACKUP_COMPLETE"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "DEFAULT_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "DLM_EVENT_CORE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/nuance/connect/internal/SyncServiceInternal$2;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    # invokes: Lcom/nuance/connect/internal/SyncServiceInternal;->getCallbacks()[Lcom/nuance/connect/api/SyncService$DLMSyncCallback;
    invoke-static {v3}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$400(Lcom/nuance/connect/internal/SyncServiceInternal;)[Lcom/nuance/connect/api/SyncService$DLMSyncCallback;

    move-result-object v3

    array-length v4, v3

    :goto_af
    if-ge v0, v4, :cond_12

    aget-object v5, v3, v0

    invoke-interface {v5, v2, v1}, Lcom/nuance/connect/api/SyncService$DLMSyncCallback;->backupOccurred(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_af

    :pswitch_b9
    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal$2;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    # getter for: Lcom/nuance/connect/internal/SyncServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$300(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "MESSAGE_HOST_DLM_RESTORE"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal$2;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    # getter for: Lcom/nuance/connect/internal/SyncServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$500(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->DLM:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/DLMConnectorInternal;

    iget-object v1, p0, Lcom/nuance/connect/internal/SyncServiceInternal$2;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/SyncServiceInternal;->dlmSyncEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "DLM_EVENT_FILE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f8

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal$2;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    # getter for: Lcom/nuance/connect/internal/SyncServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$300(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "No events file found"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_f8
    const-string/jumbo v3, "DLM_EVENT_CORE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v3, Lcom/nuance/connect/internal/SyncServiceInternal$2$1;

    invoke-direct {v3, p0, v1}, Lcom/nuance/connect/internal/SyncServiceInternal$2$1;-><init>(Lcom/nuance/connect/internal/SyncServiceInternal$2;I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/internal/DLMConnectorInternal;->restoreDlm(ILjava/lang/String;Lcom/nuance/connect/api/DLMConnector$EventNotificationCallback;)V

    goto/16 :goto_12

    :pswitch_109
    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal$2;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    # getter for: Lcom/nuance/connect/internal/SyncServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$300(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "MESSAGE_HOST_GET_DLM_STATUS"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal$2;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    # invokes: Lcom/nuance/connect/internal/SyncServiceInternal;->sendDLMSyncStatus()V
    invoke-static {v0}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$100(Lcom/nuance/connect/internal/SyncServiceInternal;)V

    goto/16 :goto_12

    :pswitch_11c
    iget-object v1, p0, Lcom/nuance/connect/internal/SyncServiceInternal$2;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    # getter for: Lcom/nuance/connect/internal/SyncServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v1}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$300(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v2, "MESSAGE_HOST_DLM_PUSH_COMPLETE"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "DEFAULT_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "DLM_EVENT_CORE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/nuance/connect/internal/SyncServiceInternal$2;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    # invokes: Lcom/nuance/connect/internal/SyncServiceInternal;->getCallbacks()[Lcom/nuance/connect/api/SyncService$DLMSyncCallback;
    invoke-static {v3}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$400(Lcom/nuance/connect/internal/SyncServiceInternal;)[Lcom/nuance/connect/api/SyncService$DLMSyncCallback;

    move-result-object v3

    array-length v4, v3

    :goto_145
    if-ge v0, v4, :cond_12

    aget-object v5, v3, v0

    invoke-interface {v5, v2, v1}, Lcom/nuance/connect/api/SyncService$DLMSyncCallback;->sentEvents(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_145

    nop

    :pswitch_data_150
    .packed-switch 0x1
        :pswitch_13
        :pswitch_46
        :pswitch_86
        :pswitch_b9
        :pswitch_109
        :pswitch_11c
    .end packed-switch
.end method

.method public onPostUpgrade()V
    .registers 1

    return-void
.end method
