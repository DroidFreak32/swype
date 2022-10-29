.class final Lcom/nuance/swype/inapp/InAppPurchaser$4;
.super Ljava/lang/Object;
.source "InAppPurchaser.java"

# interfaces
.implements Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/inapp/InAppPurchaser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/inapp/InAppPurchaser;


# direct methods
.method constructor <init>(Lcom/nuance/swype/inapp/InAppPurchaser;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/inapp/InAppPurchaser;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/nuance/swype/inapp/InAppPurchaser$4;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryInventoryFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Inventory;)V
    .registers 14
    .param p1, "result"    # Lcom/nuance/swype/inapp/util/IabResult;
    .param p2, "inv"    # Lcom/nuance/swype/inapp/util/Inventory;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 215
    sget-object v4, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v10, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "query completed with result: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/swype/inapp/util/IabResult;->isSuccess()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 217
    iget-object v4, p0, Lcom/nuance/swype/inapp/InAppPurchaser$4;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    # getter for: Lcom/nuance/swype/inapp/InAppPurchaser;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/nuance/swype/inapp/InAppPurchaser;->access$000(Lcom/nuance/swype/inapp/InAppPurchaser;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v1

    .line 218
    .local v1, "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    new-instance v3, Lcom/nuance/swype/inapp/CatalogManager$PriceMap;

    invoke-direct {v3}, Lcom/nuance/swype/inapp/CatalogManager$PriceMap;-><init>()V

    .line 219
    .local v3, "priceMap":Lcom/nuance/swype/inapp/CatalogManager$PriceMap;
    invoke-virtual {p1}, Lcom/nuance/swype/inapp/util/IabResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_118

    .line 220
    sget-object v4, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "Updating purchased list with the following: "

    aput-object v6, v5, v9

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 221
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 222
    .local v0, "allSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/nuance/swype/inapp/InAppPurchaser$4;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    # getter for: Lcom/nuance/swype/inapp/InAppPurchaser;->mQuerySkuList:Ljava/util/List;
    invoke-static {v4}, Lcom/nuance/swype/inapp/InAppPurchaser;->access$100(Lcom/nuance/swype/inapp/InAppPurchaser;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2067
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p2, Lcom/nuance/swype/inapp/util/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 223
    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 225
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_64
    :goto_64
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ee

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3050
    .local v2, "id":Ljava/lang/String;
    iget-object v4, p2, Lcom/nuance/swype/inapp/util/Inventory;->mSkuMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 226
    if-eqz v4, :cond_e5

    .line 227
    sget-object v6, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v7, v10, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\t\t*** Play results (from Play cache) *** id: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " *** price: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 229
    invoke-virtual {p2, v2}, Lcom/nuance/swype/inapp/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/nuance/swype/inapp/util/SkuDetails;

    move-result-object v8

    .line 4050
    iget-object v8, v8, Lcom/nuance/swype/inapp/util/SkuDetails;->mPrice:Ljava/lang/String;

    .line 229
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " *** isPurchased: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 230
    invoke-virtual {p2, v2}, Lcom/nuance/swype/inapp/util/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e1

    const-string/jumbo v4, "yes"

    :goto_a9
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " *** "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v9

    .line 227
    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 232
    iget-object v4, p0, Lcom/nuance/swype/inapp/InAppPurchaser$4;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    iget-object v4, v4, Lcom/nuance/swype/inapp/InAppPurchaser;->mSkuDetails:Ljava/util/Map;

    invoke-virtual {p2, v2}, Lcom/nuance/swype/inapp/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/nuance/swype/inapp/util/SkuDetails;

    move-result-object v6

    invoke-interface {v4, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-virtual {p2, v2}, Lcom/nuance/swype/inapp/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/nuance/swype/inapp/util/SkuDetails;

    move-result-object v4

    .line 5050
    iget-object v4, v4, Lcom/nuance/swype/inapp/util/SkuDetails;->mPrice:Ljava/lang/String;

    .line 235
    invoke-virtual {v3, v2, v4}, Lcom/nuance/swype/inapp/CatalogManager$PriceMap;->addSkuWithPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2, v2}, Lcom/nuance/swype/inapp/util/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 237
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 5200
    iget-object v6, v3, Lcom/nuance/swype/inapp/CatalogManager$PriceMap;->mPurchasedMap:Ljava/util/Map;

    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    .line 230
    :cond_e1
    const-string/jumbo v4, "no"

    goto :goto_a9

    .line 249
    :cond_e5
    iget-object v4, p0, Lcom/nuance/swype/inapp/InAppPurchaser$4;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    iget-object v4, v4, Lcom/nuance/swype/inapp/InAppPurchaser;->mSkuDetails:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_64

    .line 253
    .end local v2    # "id":Ljava/lang/String;
    :cond_ee
    iget-object v4, p0, Lcom/nuance/swype/inapp/InAppPurchaser$4;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    # getter for: Lcom/nuance/swype/inapp/InAppPurchaser;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/nuance/swype/inapp/InAppPurchaser;->access$000(Lcom/nuance/swype/inapp/InAppPurchaser;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getThemeManager()Lcom/nuance/swype/input/ThemeManager;

    move-result-object v4

    .line 254
    invoke-virtual {v4}, Lcom/nuance/swype/input/ThemeManager;->hasNoPriceThemes()Z

    move-result v4

    if-eqz v4, :cond_10f

    .line 255
    iget-object v4, p0, Lcom/nuance/swype/inapp/InAppPurchaser$4;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    # getter for: Lcom/nuance/swype/inapp/InAppPurchaser;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/nuance/swype/inapp/InAppPurchaser;->access$000(Lcom/nuance/swype/inapp/InAppPurchaser;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->resetThemeManagedData()V

    .line 258
    :cond_10f
    invoke-virtual {v1, v3}, Lcom/nuance/swype/inapp/CatalogManager;->sendPurchaseInfoToConnect(Lcom/nuance/swype/inapp/CatalogManager$PriceMap;)V

    .line 274
    .end local v0    # "allSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_112
    iget-object v4, p0, Lcom/nuance/swype/inapp/InAppPurchaser$4;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    invoke-virtual {v4, p1}, Lcom/nuance/swype/inapp/InAppPurchaser;->cleanup(Lcom/nuance/swype/inapp/util/IabResult;)V

    .line 275
    return-void

    .line 6039
    :cond_118
    iget v4, p1, Lcom/nuance/swype/inapp/util/IabResult;->mResponse:I

    .line 261
    const/4 v5, 0x6

    if-ne v4, v5, :cond_131

    const-string/jumbo v4, "Error refreshing inventory (querying prices of items)."

    .line 7039
    iget v5, p1, Lcom/nuance/swype/inapp/util/IabResult;->mResponse:I

    .line 262
    invoke-static {v4, v5}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseDetailedDesc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 7040
    iget-object v5, p1, Lcom/nuance/swype/inapp/util/IabResult;->mMessage:Ljava/lang/String;

    .line 263
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_131

    .line 264
    invoke-static {v9}, Lcom/nuance/swype/service/impl/AccountUtil;->setIsGoogleAccountSignedIn(Z)V

    .line 268
    :cond_131
    invoke-virtual {v1}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v4

    if-eqz v4, :cond_13e

    .line 269
    invoke-virtual {v1}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v4

    invoke-interface {v4}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->resetCatalogItemPrice()V

    .line 271
    :cond_13e
    invoke-virtual {v1}, Lcom/nuance/swype/inapp/CatalogManager;->triggerShowingThemesWithoutPrices()V

    .line 272
    sget-object v4, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "query failed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8040
    iget-object v7, p1, Lcom/nuance/swype/inapp/util/IabResult;->mMessage:Ljava/lang/String;

    .line 272
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    const-string/jumbo v6, " ...show all themes without no prices"

    aput-object v6, v5, v10

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_112
.end method
