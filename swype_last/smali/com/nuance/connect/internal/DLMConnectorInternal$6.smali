.class Lcom/nuance/connect/internal/DLMConnectorInternal$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/internal/ConnectHandler;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/DLMConnectorInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$6;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "DLMHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .registers 4

    # getter for: Lcom/nuance/connect/internal/DLMConnectorInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$1500()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_8
    # getter for: Lcom/nuance/connect/internal/DLMConnectorInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$1500()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    # getter for: Lcom/nuance/connect/internal/DLMConnectorInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$1500()[Lcom/nuance/connect/internal/common/InternalMessages;

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
    .registers 10

    sget-object v0, Lcom/nuance/connect/internal/DLMConnectorInternal$8;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v1, p2, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_c4

    :cond_11
    :goto_11
    return-void

    :pswitch_12
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$6;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    # getter for: Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$200(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "MESSAGE_HOST_PROCESS_DLM_EVENTS"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DLM_EVENT_FILE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DLM_EVENT_CORE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "DLM_EVENT_ACK"

    sget-object v4, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_PROCESS_DLM_EVENTS_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "DLM_EVENT_COUNT"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "IDENTIFIER"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$6;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-virtual {v5, v2, v1, v3, v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->recordDLMRecordset(ILjava/lang/String;ILjava/lang/String;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$6;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processDLMCore(I)V

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_PROCESS_DLM_EVENTS_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v0

    if-ne v3, v0, :cond_11

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "DLM_EVENT_COUNT"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "DLM_EVENT_CORE"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_DLM_RECEIVED_EVENTS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_11

    :pswitch_7f
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$6;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    # getter for: Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$200(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "MESSAGE_HOST_PROCESS_DLM_DELETE_CATEGORY"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DLM_DELETE_CAETEGORY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v1, "DLM_EVENT_CORE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "DLM_DELETE_LANGUAGE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v4, "IDENTIFIER"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v4, "DLM_EVENT_ACK"

    sget-object v6, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_PROCESS_CATEGORY_DELETE_CATEGORY_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v6}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$6;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/connect/internal/DLMConnectorInternal;->recordDLMDeleteCategory(IIIILjava/lang/String;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$6;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processDLMCore(I)V

    goto/16 :goto_11

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_12
        :pswitch_7f
    .end packed-switch
.end method

.method public onPostUpgrade()V
    .registers 1

    return-void
.end method
