.class Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction$2;
.super Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction$2;->this$1:Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;

    invoke-direct {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/comm/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/nuance/connect/comm/Command;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction$2;->this$1:Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;

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
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction$2;->this$1:Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;

    invoke-static {v0, p1}, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->access$200(Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;Lcom/nuance/connect/comm/Response;)V

    return-void
.end method

.method public onRetry(Lcom/nuance/connect/comm/Command;IILjava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction$2;->this$1:Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;->access$000(Lcom/nuance/connect/service/manager/DeviceManager$DeviceRegistrationTransaction;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "onRetry("

    iget-object v2, p1, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    const-string/jumbo v3, ")"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method
