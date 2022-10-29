.class Lcom/nuance/connect/internal/CategoryServiceInternal$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "sendCatalogStatus="

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogStatus:Z
    invoke-static {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$700(Lcom/nuance/connect/internal/CategoryServiceInternal;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CATALOG_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogStatus:Z
    invoke-static {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$700(Lcom/nuance/connect/internal/CategoryServiceInternal;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    return-void
.end method
