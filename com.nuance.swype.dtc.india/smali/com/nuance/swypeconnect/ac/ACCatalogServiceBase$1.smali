.class Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/CatalogService$CatalogCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public catalogItemInstalledUpdates(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/CatalogService$CatalogItem;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->access$000(Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "CatalogCallbackAdapter.catalogItemInstalledUpdates() called"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/CatalogService$CatalogItem;

    new-instance v4, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;

    invoke-direct {v4, v0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;-><init>(Lcom/nuance/connect/api/CatalogService$CatalogItem;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->access$100(Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v3, v1, [Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogCallback;

    invoke-virtual {v0, v3}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogCallback;

    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    invoke-interface {v4, v2}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogCallback;->catalogItemInstalledUpdates(Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public catalogItemListChanged()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->access$000(Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "CatalogCallbackAdapter.catalogItemListChanged() called"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->access$100(Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v2, v1, [Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogCallback;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogCallback;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogCallback;->catalogItemListChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public catalogSKUListChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->access$000(Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "CatalogCallbackAdapter.catalogSKUListChanged() called"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->access$100(Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v2, v1, [Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogCallback;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogCallback;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-interface {v3, p1}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogCallback;->catalogSKUListChanged(Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public skuListAvailable(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->access$100(Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v2, v1, [Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogCallback;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogCallback;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-interface {v3, p1}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogCallback;->skuListAvailable(Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public skuListUnavailable(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$1;->this$0:Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->access$100(Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;)Lcom/nuance/connect/util/ConcurrentCallbackSet;

    move-result-object v0

    new-array v2, v1, [Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogCallback;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogCallback;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-interface {v3, p1}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogCallback;->skuListUnavailable(Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
