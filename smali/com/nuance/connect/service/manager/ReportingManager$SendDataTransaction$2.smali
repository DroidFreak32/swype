.class Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$2;
.super Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$2;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/service/manager/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/nuance/connect/service/comm/Command;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$2;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->access$300(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$2;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    invoke-static {v0, p1}, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->access$1400(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;Lcom/nuance/connect/service/comm/Command;)V

    return-void
.end method

.method public onIOExceptionResponse(Lcom/nuance/connect/service/comm/Command;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$2;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->access$300(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$2;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    invoke-static {v0, p1}, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->access$1400(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;Lcom/nuance/connect/service/comm/Command;)V

    return-void
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$2;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->access$300(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/comm/Command;

    invoke-static {}, Lcom/nuance/connect/service/manager/ReportingManager;->access$200()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string v2, "onResponse"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    const-string v1, "aggregate"

    iget-object v2, v0, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/nuance/connect/service/manager/ReportingManager;->access$200()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string v2, "onResponse - aggregate"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v1, "61"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$2;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->access$912(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;I)I

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$2;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager;->access$1100(Lcom/nuance/connect/service/manager/ReportingManager;)Lcom/nuance/connect/sqlite/ReportingDataSource;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$2;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->access$1000(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nuance/connect/sqlite/ReportingDataSource;->clearAggregate(J)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$2;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->access$300(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DEFAULT_KEY"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$2;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    invoke-static {v2}, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->access$900(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$2;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/ReportingManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_REPORTING_TRANSMISSION_SUCCESS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_0

    const-string v1, "individual"

    iget-object v0, v0, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nuance/connect/service/manager/ReportingManager;->access$200()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onResponse - individual"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$2;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$2;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->access$1200(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->access$912(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;I)I

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$2;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager;->access$1100(Lcom/nuance/connect/service/manager/ReportingManager;)Lcom/nuance/connect/sqlite/ReportingDataSource;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction$2;->this$1:Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;->access$1300(Lcom/nuance/connect/service/manager/ReportingManager$SendDataTransaction;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nuance/connect/sqlite/ReportingDataSource;->clearIndividual(J)V

    goto :goto_1
.end method
