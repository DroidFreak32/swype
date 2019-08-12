.class Lcom/nuance/connect/internal/DLMConnectorInternal$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue$StatusCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/DLMConnectorInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$4;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$4;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$000(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "Backup complete count: "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DLM_EVENT_CORE"

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$4;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-static {v2}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$1100(Lcom/nuance/connect/internal/DLMConnectorInternal;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$4;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$300(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_DLM_BACKUP_EVENTS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    new-instance v0, Lcom/nuance/connect/internal/DLMConnectorInternal$4$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/DLMConnectorInternal$4$1;-><init>(Lcom/nuance/connect/internal/DLMConnectorInternal$4;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$4;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$300(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getIncomingHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
