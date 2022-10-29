.class Lcom/nuance/connect/internal/CategoryServiceInternal$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$6;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$6;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->skuToCatalogItems:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isPendingPrice()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_33
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$6;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/connect/internal/CategoryServiceInternal$6$1;

    invoke-direct {v1, p0, v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$6$1;-><init>(Lcom/nuance/connect/internal/CategoryServiceInternal$6;Ljava/util/HashSet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
