.class Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction$1;
.super Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction$1;->this$1:Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;

    invoke-direct {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/comm/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/nuance/connect/comm/Command;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->onFailure(Lcom/nuance/connect/comm/Command;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction$1;->this$1:Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACCOUNT_VERIFY:Lcom/nuance/connect/internal/common/InternalMessages;

    const-string/jumbo v2, "FAILURE"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction$1;->this$1:Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;

    # invokes: Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->onResponseVerify(Lcom/nuance/connect/comm/Response;)V
    invoke-static {v0, p1}, Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;->access$600(Lcom/nuance/connect/service/manager/AccountManager$VerifyAccountTransaction;Lcom/nuance/connect/comm/Response;)V

    return-void
.end method
