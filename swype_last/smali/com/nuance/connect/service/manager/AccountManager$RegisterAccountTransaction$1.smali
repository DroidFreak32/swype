.class Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction$1;
.super Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction$1;->this$1:Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;

    invoke-direct {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/comm/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/nuance/connect/comm/Command;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->onFailure(Lcom/nuance/connect/comm/Command;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction$1;->this$1:Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    # getter for: Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/AccountManager;->access$000(Lcom/nuance/connect/service/manager/AccountManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "onFailure() "

    iget-object v2, p1, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction$1;->this$1:Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->rollback()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction$1;->this$1:Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACCOUNT_CREATED:Lcom/nuance/connect/internal/common/InternalMessages;

    const-string/jumbo v2, "FAILURE"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    return-void
.end method

.method public onIOExceptionResponse(Lcom/nuance/connect/comm/Command;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->onIOExceptionResponse(Lcom/nuance/connect/comm/Command;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction$1;->this$1:Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    # getter for: Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/AccountManager;->access$000(Lcom/nuance/connect/service/manager/AccountManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "onIOExceptionResponse() "

    iget-object v2, p1, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction$1;->this$1:Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->rollback()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction$1;->this$1:Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACCOUNT_CREATED:Lcom/nuance/connect/internal/common/InternalMessages;

    const-string/jumbo v2, "FAILURE"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction$1;->this$1:Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    # getter for: Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/AccountManager;->access$000(Lcom/nuance/connect/service/manager/AccountManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "sendRegister.onResponse()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction$1;->this$1:Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;

    # invokes: Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->onResponseRegister(Lcom/nuance/connect/comm/Response;)V
    invoke-static {v0, p1}, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->access$400(Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;Lcom/nuance/connect/comm/Response;)V

    return-void
.end method

.method public onRetry(Lcom/nuance/connect/comm/Command;IILjava/lang/String;)Z
    .registers 8

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction$1;->this$1:Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    # getter for: Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/AccountManager;->access$000(Lcom/nuance/connect/service/manager/AccountManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "onDelay() delay: "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    if-lez p2, :cond_52

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Account creation failed, server delayed the request."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction$1;->this$1:Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->rollback()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "DEFAULT_KEY"

    const-string/jumbo v2, "FAILURE"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "delay"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction$1;->this$1:Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/AccountManager$RegisterAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACCOUNT_CREATED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    :goto_51
    return v0

    :cond_52
    const/4 v0, 0x1

    goto :goto_51
.end method
