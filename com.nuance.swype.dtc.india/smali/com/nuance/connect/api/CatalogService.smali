.class public interface abstract Lcom/nuance/connect/api/CatalogService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/api/CatalogService$CatalogItemBundle;,
        Lcom/nuance/connect/api/CatalogService$CatalogItem;,
        Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;,
        Lcom/nuance/connect/api/CatalogService$CatalogCallback;
    }
.end annotation


# virtual methods
.method public abstract cancelDownloadCatalogItem(Ljava/lang/String;)V
.end method

.method public abstract disableCatalog()V
.end method

.method public abstract downloadCatalogItem(Ljava/lang/String;Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;)V
.end method

.method public abstract enableCatalog()V
.end method

.method public abstract getCatalogItemByCategory(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/CatalogService$CatalogItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCatalogItemCategories()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCatalogItemCategoriesByType(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCatalogItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/CatalogService$CatalogItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCatalogItemsByType(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/CatalogService$CatalogItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCategoryKeyForCategoryName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSKUList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSKUListForPurchase()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSKUListForPurchaseByType(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract installedCatalogItem(Ljava/lang/String;)V
.end method

.method public abstract isCatalogEnabled()Z
.end method

.method public abstract isCatalogListAvailable()Z
.end method

.method public abstract registerCatalogCallback(Lcom/nuance/connect/api/CatalogService$CatalogCallback;)V
.end method

.method public abstract resetCatalogItemPrice()V
.end method

.method public abstract resetPurchasedSKU()V
.end method

.method public abstract setCatalogItemPrices(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPurchasedSKU(Ljava/lang/String;)V
.end method

.method public abstract setPurchasedSKUList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract skuListAvailable(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract uninstallCatalogItem(Ljava/lang/String;)V
.end method

.method public abstract unregisterCatalogCallback(Lcom/nuance/connect/api/CatalogService$CatalogCallback;)V
.end method

.method public abstract unregisterCatalogCallbacks()V
.end method
