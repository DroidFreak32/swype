.class Lcom/nuance/connect/internal/CategoryServiceInternal$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$7;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "processCatalogSKUListAvailable"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$7;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSKUListAvailableCheck:Ljava/util/List;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    :try_start_1b
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$7;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSKUListAvailableCheck:Ljava/util/List;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$7;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSKUListAvailableCheck:Ljava/util/List;
    invoke-static {v4}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_68

    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$7;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # invokes: Lcom/nuance/connect/internal/CategoryServiceInternal;->getCurrentDeviceCountry()Ljava/lang/String;
    invoke-static {v3}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$7;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # invokes: Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryIdsForSKUs()Ljava/util/Map;
    invoke-static {v5}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_40
    :goto_40
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v7, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$7;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # invokes: Lcom/nuance/connect/internal/CategoryServiceInternal;->getCategoryIdForSKU(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v5, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1500(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$7;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # invokes: Lcom/nuance/connect/internal/CategoryServiceInternal;->getCatalogItem(Ljava/lang/String;)Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;
    invoke-static {v7, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1600(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/lang/String;)Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-virtual {v0, v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isAvailable(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6b

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :catchall_68
    move-exception v0

    :try_start_69
    monitor-exit v3
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v0

    :cond_6b
    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isLocationRestricted()Z

    move-result v7

    if-nez v7, :cond_79

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_79
    invoke-virtual {v0, v3}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isAllowedInCountry(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_87

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_87
    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_8f
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a6

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$7;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSKUListAvailableCheck:Ljava/util/List;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    :try_start_9c
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$7;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogSKUListAvailableCheck:Ljava/util/List;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v3
    :try_end_a6
    .catchall {:try_start_9c .. :try_end_a6} :catchall_c1

    :cond_a6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c0

    :cond_b2
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$7;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/nuance/connect/internal/CategoryServiceInternal$7$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$7$1;-><init>(Lcom/nuance/connect/internal/CategoryServiceInternal$7;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c0
    return-void

    :catchall_c1
    move-exception v0

    :try_start_c2
    monitor-exit v3
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_c1

    throw v0
.end method
