.class Lcom/nuance/connect/internal/CategoryServiceInternal$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$5;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$5;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$5;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_4f

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$5;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$5;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Set;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$5;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogPurchasedSkuList:Ljava/util/Set;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-static {v0, v2}, Lcom/nuance/connect/util/StringUtils;->implode(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v2

    const-string/jumbo v3, "sendCatalogPurchasedSKUs="

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$5;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v2

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATALOG_PURCHASED_SKUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    :cond_4f
    monitor-exit v1

    return-void

    :catchall_51
    move-exception v0

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_7 .. :try_end_53} :catchall_51

    throw v0
.end method
