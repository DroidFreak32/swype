.class final Lcom/nuance/swype/inapp/CatalogManager$1$1;
.super Landroid/os/AsyncTask;
.source "CatalogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/inapp/CatalogManager$1;->catalogItemListChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/swype/inapp/CatalogManager$1;


# direct methods
.method constructor <init>(Lcom/nuance/swype/inapp/CatalogManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/nuance/swype/inapp/CatalogManager$1;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/nuance/swype/inapp/CatalogManager$1$1;->this$1:Lcom/nuance/swype/inapp/CatalogManager$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs doInBackground$68cf9880()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 202
    iget-object v4, p0, Lcom/nuance/swype/inapp/CatalogManager$1$1;->this$1:Lcom/nuance/swype/inapp/CatalogManager$1;

    iget-object v4, v4, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-virtual {v4}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v4

    invoke-interface {v4}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->getCatalogItems()Ljava/util/List;

    move-result-object v2

    .line 204
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;>;"
    iget-object v4, p0, Lcom/nuance/swype/inapp/CatalogManager$1$1;->this$1:Lcom/nuance/swype/inapp/CatalogManager$1;

    iget-object v4, v4, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-static {v4}, Lcom/nuance/swype/inapp/CatalogManager;->access$100(Lcom/nuance/swype/inapp/CatalogManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v4

    .line 205
    invoke-virtual {v4}, Lcom/nuance/swype/input/ThemeManager;->getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;

    .line 1039
    invoke-static {}, Lcom/nuance/swype/util/storage/ThemeData;->isCacheEmpty()Z

    move-result v4

    .line 206
    if-nez v4, :cond_0

    .line 2027
    invoke-static {}, Lcom/nuance/swype/util/storage/ThemeData;->isItemDeleted()Z

    move-result v4

    .line 207
    if-eqz v4, :cond_1

    .line 2043
    invoke-static {}, Lcom/nuance/swype/util/storage/ThemeData;->getCache()Ljava/util/HashMap;

    move-result-object v4

    .line 208
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 214
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 216
    .local v3, "updateSuccessful":Z
    :try_start_0
    iget-object v4, p0, Lcom/nuance/swype/inapp/CatalogManager$1$1;->this$1:Lcom/nuance/swype/inapp/CatalogManager$1;

    iget-object v4, v4, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-static {v4, v2}, Lcom/nuance/swype/inapp/CatalogManager;->access$300(Lcom/nuance/swype/inapp/CatalogManager;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    const/4 v3, 0x1

    .line 221
    :goto_1
    if-nez v3, :cond_2

    .line 222
    const/4 v2, 0x0

    .line 232
    .end local v2    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;>;"
    :goto_2
    return-object v2

    .line 2055
    .end local v3    # "updateSuccessful":Z
    .restart local v2    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;>;"
    :cond_1
    invoke-static {}, Lcom/nuance/swype/util/storage/ThemeData;->resetItemDeleteStatus()V

    goto :goto_0

    .line 219
    .restart local v3    # "updateSuccessful":Z
    :catch_0
    move-exception v4

    sget-object v4, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v5, "Themes update failed"

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1

    .line 224
    :cond_2
    sget-object v4, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "New catalog item list size is: "

    aput-object v6, v5, v8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 226
    iget-object v4, p0, Lcom/nuance/swype/inapp/CatalogManager$1$1;->this$1:Lcom/nuance/swype/inapp/CatalogManager$1;

    iget-object v4, v4, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-virtual {v4}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v4

    invoke-interface {v4}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->getCatalogItemCategories()Ljava/util/List;

    move-result-object v0

    .line 228
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 229
    sget-object v4, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "categories:"

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const-string/jumbo v6, ":"

    aput-object v6, v5, v10

    const/4 v6, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 231
    :cond_3
    sget-object v4, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, "call back onCatalogItemListChanged"

    aput-object v6, v5, v8

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/nuance/swype/inapp/CatalogManager$1$1;->doInBackground$68cf9880()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 199
    check-cast p1, Ljava/util/List;

    .line 2237
    if-eqz p1, :cond_1

    .line 2241
    iget-object v2, p0, Lcom/nuance/swype/inapp/CatalogManager$1$1;->this$1:Lcom/nuance/swype/inapp/CatalogManager$1;

    iget-object v2, v2, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-static {v2}, Lcom/nuance/swype/inapp/CatalogManager;->access$100(Lcom/nuance/swype/inapp/CatalogManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v2

    .line 2242
    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager;->addConnectedThemesToMap()Z

    move-result v3

    .line 2243
    iget-object v4, p0, Lcom/nuance/swype/inapp/CatalogManager$1$1;->this$1:Lcom/nuance/swype/inapp/CatalogManager$1;

    iget-object v4, v4, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-static {v4}, Lcom/nuance/swype/inapp/CatalogManager;->access$400(Lcom/nuance/swype/inapp/CatalogManager;)Lcom/nuance/swype/input/settings/SettingsV11;

    move-result-object v4

    .line 2245
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager;->getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;

    .line 3039
    invoke-static {}, Lcom/nuance/swype/util/storage/ThemeData;->isCacheEmpty()Z

    move-result v5

    .line 2245
    if-nez v5, :cond_4

    .line 2246
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isInAppApiSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isInAppServiceExisting()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2249
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/nuance/swype/input/settings/SettingsV11;->isCurrentThemeStoreShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2250
    invoke-virtual {v4}, Lcom/nuance/swype/input/settings/SettingsV11;->getTabHostManager()Lcom/nuance/swype/input/store/ThemeTabHostManager;

    move-result-object v2

    .line 2251
    if-eqz v2, :cond_1

    .line 2252
    if-eqz v3, :cond_3

    .line 2253
    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->isCurrentTabBuyThemes()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    sget-object v1, Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;->CATALOG_CALLBACK:Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;

    invoke-virtual {v2, v0, v1}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->showMainTabsList(ILcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;)V

    .line 2263
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 2253
    goto :goto_0

    .line 2255
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/inapp/CatalogManager$1$1;->this$1:Lcom/nuance/swype/inapp/CatalogManager$1;

    iget-object v2, v2, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-static {v2}, Lcom/nuance/swype/inapp/CatalogManager;->access$500(Lcom/nuance/swype/inapp/CatalogManager;)Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2257
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v3, "call back refresh free themes"

    aput-object v3, v0, v1

    invoke-interface {v2, v0}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2258
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$1$1;->this$1:Lcom/nuance/swype/inapp/CatalogManager$1;

    iget-object v0, v0, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-static {v0}, Lcom/nuance/swype/inapp/CatalogManager;->access$500(Lcom/nuance/swype/inapp/CatalogManager;)Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;->onCatalogItemListChanged()V

    goto :goto_1

    .line 2269
    :cond_4
    iget-object v5, p0, Lcom/nuance/swype/inapp/CatalogManager$1$1;->this$1:Lcom/nuance/swype/inapp/CatalogManager$1;

    iget-object v5, v5, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-static {v5, p1}, Lcom/nuance/swype/inapp/CatalogManager;->access$600(Lcom/nuance/swype/inapp/CatalogManager;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/nuance/swype/inapp/CatalogManager$1$1;->this$1:Lcom/nuance/swype/inapp/CatalogManager$1;

    iget-object v5, v5, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    .line 2270
    invoke-virtual {v5}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v5

    invoke-interface {v5}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->getSKUListForPurchase()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/nuance/swype/inapp/CatalogManager$1$1;->this$1:Lcom/nuance/swype/inapp/CatalogManager$1;

    iget-object v5, v5, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    .line 2271
    invoke-virtual {v5}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v5

    invoke-interface {v5}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->getSKUListForPurchase()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 2272
    :cond_5
    iget-object v5, p0, Lcom/nuance/swype/inapp/CatalogManager$1$1;->this$1:Lcom/nuance/swype/inapp/CatalogManager$1;

    iget-object v5, v5, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-static {v5}, Lcom/nuance/swype/inapp/CatalogManager;->access$702$5c4c8ca3(Lcom/nuance/swype/inapp/CatalogManager;)Z

    .line 2273
    iget-object v5, p0, Lcom/nuance/swype/inapp/CatalogManager$1$1;->this$1:Lcom/nuance/swype/inapp/CatalogManager$1;

    iget-object v5, v5, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-static {v5}, Lcom/nuance/swype/inapp/CatalogManager;->access$800(Lcom/nuance/swype/inapp/CatalogManager;)V

    .line 2276
    :cond_6
    if-eqz v4, :cond_1

    .line 2277
    invoke-virtual {v4}, Lcom/nuance/swype/input/settings/SettingsV11;->getTabHostManager()Lcom/nuance/swype/input/store/ThemeTabHostManager;

    move-result-object v5

    .line 2278
    if-eqz v5, :cond_1

    .line 2279
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2280
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isInAppApiSupported()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2281
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isInAppServiceExisting()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2282
    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager;->getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;

    .line 4039
    invoke-static {}, Lcom/nuance/swype/util/storage/ThemeData;->isCacheEmpty()Z

    move-result v2

    .line 2282
    if-nez v2, :cond_1

    .line 2284
    iget-object v2, p0, Lcom/nuance/swype/inapp/CatalogManager$1$1;->this$1:Lcom/nuance/swype/inapp/CatalogManager$1;

    iget-object v2, v2, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-static {v2}, Lcom/nuance/swype/inapp/CatalogManager;->access$900(Lcom/nuance/swype/inapp/CatalogManager;)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_7

    if-eqz v3, :cond_1

    .line 2285
    :cond_7
    invoke-virtual {v4}, Lcom/nuance/swype/input/settings/SettingsV11;->isCurrentThemeStoreShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2288
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v0, [Ljava/lang/Object;

    const-string/jumbo v6, "call back refresh all themes"

    aput-object v6, v4, v1

    invoke-interface {v2, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2289
    if-eqz v3, :cond_1

    .line 2299
    invoke-virtual {v5}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->isCurrentTabBuyThemes()Z

    move-result v2

    if-eqz v2, :cond_8

    :goto_2
    sget-object v1, Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;->CATALOG_CALLBACK:Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;

    invoke-virtual {v5, v0, v1}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->showMainTabsList(ILcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;)V

    goto/16 :goto_1

    :cond_8
    move v0, v1

    goto :goto_2
.end method
