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

    invoke-static {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$500(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "SDK Service bound."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "HANDLER_LIST"

    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-static {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$1000(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/internal/HandlerRegistry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/HandlerRegistry;->getRegisteredHandlers()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SERVICES_LIST"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-static {v3}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$1100(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v3, ","

    invoke-static {v2, v3}, Lcom/nuance/connect/util/StringUtils;->listToString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "PROCESS_ID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "CONFIG_KEY"

    iget-object v2, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-static {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$1200(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/common/ServiceInitializationConfig;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_REGISTER_CLIENT:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    return-void
.end method

.method public onUnbound()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$500(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "SDK Service unbound."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$8;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$900(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal$IncomingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$IncomingHandler;->stop()V

    return-void
.end method
