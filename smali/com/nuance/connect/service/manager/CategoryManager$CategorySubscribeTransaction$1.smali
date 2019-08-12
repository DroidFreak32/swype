.class Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction$1;
.super Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction$1;->this$1:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/service/manager/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/nuance/connect/service/comm/Command;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;->onFailure(Lcom/nuance/connect/service/comm/Command;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction$1;->this$1:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->access$900(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;)V

    return-void
.end method

.method public onIOExceptionResponse(Lcom/nuance/connect/service/comm/Command;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;->onIOExceptionResponse(Lcom/nuance/connect/service/comm/Command;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction$1;->this$1:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->access$900(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;)V

    return-void
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction$1;->this$1:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;

    invoke-static {v0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;->access$800(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeTransaction;Lcom/nuance/connect/service/comm/Response;)V

    return-void
.end method
