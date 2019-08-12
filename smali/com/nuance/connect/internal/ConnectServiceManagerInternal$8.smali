.class Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBound()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$200(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "SDK Service bound."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$400(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "ENABLE_DATA_CONNECTION"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "HANDLER_LIST"

    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-static {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$700(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/internal/HandlerRegistry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/HandlerRegistry;->getRegisteredHandlers()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SERVICES_LIST"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-static {v3}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$800(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, ","

    invoke-static {v2, v3}, Lcom/nuance/connect/util/StringUtils;->listToString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    iget-object v0, v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->hostInterface:Lcom/nuance/connect/host/service/HostInterface;

    sget-object v2, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-interface {v0, v2}, Lcom/nuance/connect/host/service/HostInterface;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/host/service/BuildSettings;

    const-string v2, "DEVELOPER_LOG_ENABLED"

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->isDeveloperLogEnabled()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "DEFAULT_DELAY"

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getDefaultDelay()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "COLLECT_USER_PROPERTIES"

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->collectUserProperties()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_REGISTER_CLIENT:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v2, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_START_IMMEDIDATELY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    return-void
.end method

.method public onUnbound()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$200(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "SDK Service unbound."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$600(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal$IncomingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$IncomingHandler;->stop()V

    return-void
.end method
