.class Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/comm/MessageSendingBus;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "[ChinesePredictionServiceInternal]"

    const-string/jumbo v2, "getContext()"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$400(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "[ChinesePredictionServiceInternal]"

    const-string/jumbo v2, "getDeviceId()"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$400(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ConfigService;

    if-eqz v0, :cond_24

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_23
    return-object v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public getDeviceRegisterCommand()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionCreateCommand()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "[ChinesePredictionServiceInternal]"

    const-string/jumbo v2, "getSessionId()"

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$400(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ConfigService;

    if-eqz v0, :cond_24

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_23
    return-object v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public isLicensed()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$400(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->isLicensed()Z

    move-result v0

    return v0
.end method
