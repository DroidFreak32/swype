.class public interface abstract Lcom/nuance/swypeconnect/ac/ACCatalogService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItemBundle;,
        Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;,
        Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItemDownloadCallback;,
        Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogCallback;
    }
.end annotation


# static fields
.field public static final REASON_BUNDLE_NOT_DOWNLOADABLE:I = 0x9

.field public static final REASON_FAILED_DISK_FULL:I = 0x6

.field public static final REASON_FAILED_HTTP:I = 0x0

.field public static final REASON_FAILED_MAX_RETRY:I = 0x1

.field public static final REASON_NETWORK_TIMEOUT:I = 0x4

.field public static final REASON_USER_CANCELED:I = 0x3


# virtual methods
.method public abstract cancelDownloadCatalogItem(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation
.end method

.method public abstract disableCatalog()V
.end method

.method public abstract downloadCatalogItem(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItemDownloadCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation
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
            "Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;",
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
            "Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;",
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
            "Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;",
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation
.end method

.method public abstract isCatalogListAvailable()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract registerCallback(Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogCallback;)V
.end method

.method public abstract resetCatalogItemPrice()V
.end method

.method public abstract resetPurchasedSKU()V
.end method

.method public abstract setCatalogItemPrice(Ljava/lang/String;Ljava/lang/String;)V
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

.method public abstract skuAvailable(Ljava/lang/String;)V
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation
.end method

.method public abstract unregisterCallback(Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogCallback;)V
.end method

.method public abstract unregisterCallbacks()V
.end method
