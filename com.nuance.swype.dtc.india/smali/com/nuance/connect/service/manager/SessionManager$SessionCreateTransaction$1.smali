.class Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction$1;
.super Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;

.field final synthetic val$this$0:Lcom/nuance/connect/service/manager/SessionManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;Lcom/nuance/connect/service/manager/SessionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction$1;->this$1:Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;

    iput-object p2, p0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction$1;->val$this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-direct {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/comm/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/nuance/connect/comm/Command;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction$1;->this$1:Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$100(Lcom/nuance/connect/service/manager/SessionManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction$1;->this$1:Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " onFailure()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->onFailure(Lcom/nuance/connect/comm/Command;)V

    return-void
.end method

.method public onIOExceptionResponse(Lcom/nuance/connect/comm/Command;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction$1;->this$1:Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$100(Lcom/nuance/connect/service/manager/SessionManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction$1;->this$1:Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " onIOExceptionResponse()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->onIOExceptionResponse(Lcom/nuance/connect/comm/Command;)V

    return-void
.end method

.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction$1;->this$1:Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;

    invoke-static {v0, p1}, Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;->access$1000(Lcom/nuance/connect/service/manager/SessionManager$SessionCreateTransaction;Lcom/nuance/connect/comm/Response;)V

    return-void
.end method
