.class Lcom/nuance/connect/service/manager/AccountManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/service/manager/interfaces/AccountListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/AccountManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/AccountManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/AccountManager$1;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvalidated()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$1;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/AccountManager;->access$000(Lcom/nuance/connect/service/manager/AccountManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onInvalidated"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$1;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/AccountManager;->access$100(Lcom/nuance/connect/service/manager/AccountManager;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$1;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/AccountManager;->access$200(Lcom/nuance/connect/service/manager/AccountManager;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$1;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AccountManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACCOUNT_INVALIDATED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    return-void
.end method

.method public onLinked()V
    .locals 0

    return-void
.end method
