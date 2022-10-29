.class Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction$1;
.super Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction$1;->this$1:Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;

    invoke-direct {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/comm/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/nuance/connect/comm/Command;)V
    .registers 6

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction$1;->this$1:Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;

    # getter for: Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->access$000(Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "onFailure("

    iget-object v2, p1, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    const-string/jumbo v3, ")"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->onFailure(Lcom/nuance/connect/comm/Command;)V

    return-void
.end method

.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction$1;->this$1:Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;

    # invokes: Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->processRegisterDeviceResponse(Lcom/nuance/connect/comm/Response;)V
    invoke-static {v0, p1}, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->access$100(Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;Lcom/nuance/connect/comm/Response;)V

    return-void
.end method

.method public onRetry(Lcom/nuance/connect/comm/Command;IILjava/lang/String;)Z
    .registers 15

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction$1;->this$1:Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;

    # getter for: Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->access$000(Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "onRetry("

    iget-object v2, p1, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    const-string/jumbo v3, ", "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, ", "

    const-string/jumbo v9, ")"

    move-object v8, p4

    invoke-interface/range {v0 .. v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method
