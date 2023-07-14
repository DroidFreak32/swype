.class Lcom/nuance/connect/service/manager/DeviceManager$1;
.super Lcom/nuance/connect/comm/SimpleTransaction;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/DeviceManager;

.field final synthetic val$updatedProps:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/DeviceManager;Lcom/nuance/connect/comm/Command;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/DeviceManager$1;->this$0:Lcom/nuance/connect/service/manager/DeviceManager;

    iput-object p3, p0, Lcom/nuance/connect/service/manager/DeviceManager$1;->val$updatedProps:Ljava/util/HashMap;

    invoke-direct {p0, p2}, Lcom/nuance/connect/comm/SimpleTransaction;-><init>(Lcom/nuance/connect/comm/Command;)V

    return-void
.end method


# virtual methods
.method public onEndProcessing()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$1;->this$0:Lcom/nuance/connect/service/manager/DeviceManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DeviceManager$1;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/DeviceManager;->finishTransaction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DeviceManager$1;->val$updatedProps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-static {v0, v1}, Lcom/nuance/connect/util/StringUtils;->listToString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DeviceManager$1;->this$0:Lcom/nuance/connect/service/manager/DeviceManager;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/DeviceManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEVICE_PROPERTIES_UPDATED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    return-void
.end method
