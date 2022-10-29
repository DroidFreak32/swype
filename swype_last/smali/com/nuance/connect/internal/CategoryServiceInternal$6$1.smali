.class Lcom/nuance/connect/internal/CategoryServiceInternal$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/internal/CategoryServiceInternal$6;

.field final synthetic val$skusChanged:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/CategoryServiceInternal$6;Ljava/util/HashSet;)V
    .registers 3

    iput-object p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$6$1;->this$1:Lcom/nuance/connect/internal/CategoryServiceInternal$6;

    iput-object p2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$6$1;->val$skusChanged:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$6$1;->this$1:Lcom/nuance/connect/internal/CategoryServiceInternal$6;

    iget-object v0, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$6;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->catalogListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$800(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v2, v1, [Lcom/nuance/connect/api/CatalogService$CatalogCallback;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/api/CatalogService$CatalogCallback;

    array-length v2, v0

    :goto_12
    if-ge v1, v2, :cond_23

    aget-object v3, v0, v1

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$6$1;->val$skusChanged:Ljava/util/HashSet;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v4}, Lcom/nuance/connect/api/CatalogService$CatalogCallback;->catalogSKUListChanged(Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_23
    return-void
.end method
