.class Lcom/nuance/connect/internal/CategoryServiceInternal$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/internal/CategoryServiceInternal$7;

.field final synthetic val$negativeResponseList:Ljava/util/List;

.field final synthetic val$positiveResponseList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/CategoryServiceInternal$7;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$7$1;->this$1:Lcom/nuance/connect/internal/CategoryServiceInternal$7;

    iput-object p2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$7$1;->val$negativeResponseList:Ljava/util/List;

    iput-object p3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$7$1;->val$positiveResponseList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$7$1;->this$1:Lcom/nuance/connect/internal/CategoryServiceInternal$7;

    iget-object v0, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$7;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$800(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v2, v1, [Lcom/nuance/connect/api/CatalogService$CatalogCallback;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/api/CatalogService$CatalogCallback;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$7$1;->val$negativeResponseList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$7$1;->val$negativeResponseList:Ljava/util/List;

    invoke-interface {v3, v4}, Lcom/nuance/connect/api/CatalogService$CatalogCallback;->skuListUnavailable(Ljava/util/List;)V

    :cond_0
    iget-object v4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$7$1;->val$positiveResponseList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$7$1;->val$positiveResponseList:Ljava/util/List;

    invoke-interface {v3, v4}, Lcom/nuance/connect/api/CatalogService$CatalogCallback;->skuListAvailable(Ljava/util/List;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
