.class public Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
.super Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/ThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectDownloadableThemeWrapper"
.end annotation


# instance fields
.field private mTheme:Lcom/nuance/swype/util/storage/ThemeItemSeed;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/util/storage/ThemeItemSeed;Ljava/lang/String;)V
    .locals 10
    .param p1, "theme"    # Lcom/nuance/swype/util/storage/ThemeItemSeed;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 241
    .line 2162
    iget-object v3, p1, Lcom/nuance/swype/util/storage/ThemeItemSeed;->sku:Ljava/lang/String;

    .line 3146
    iget-object v4, p1, Lcom/nuance/swype/util/storage/ThemeItemSeed;->themeName:Ljava/lang/String;

    .line 241
    sget v5, Lcom/nuance/swype/input/R$drawable;->thumbnail_test:I

    sget v6, Lcom/nuance/swype/input/R$drawable;->theme_preview_test:I

    .line 3170
    iget-object v7, p1, Lcom/nuance/swype/util/storage/ThemeItemSeed;->themeCategoryLabel:Ljava/lang/String;

    .line 4100
    iget-object v8, p1, Lcom/nuance/swype/util/storage/ThemeItemSeed;->skuList:Ljava/util/List;

    .line 5090
    iget v9, p1, Lcom/nuance/swype/util/storage/ThemeItemSeed;->weight:I

    move-object v0, p0

    move v2, v1

    .line 241
    invoke-direct/range {v0 .. v9}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;-><init>(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/List;I)V

    .line 245
    iput-object p1, p0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->mTheme:Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 246
    return-void
.end method


# virtual methods
.method public getDisplayName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->mTheme:Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 7146
    iget-object v0, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->themeName:Ljava/lang/String;

    .line 263
    return-object v0
.end method

.method public getPreviewImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->mTheme:Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 8186
    iget-object v0, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->previewUrl:Ljava/lang/String;

    .line 280
    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->mTheme:Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 5194
    iget-object v0, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->price:Ljava/lang/String;

    .line 249
    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->mTheme:Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 6162
    iget-object v0, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->sku:Ljava/lang/String;

    .line 258
    return-object v0
.end method

.method public getSource()Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;->CONNECT:Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    return-object v0
.end method

.method public getStatusIcon(Landroid/content/Context;)I
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 290
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v0

    .line 292
    .local v0, "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    sget-object v3, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, " theme sku:"

    aput-object v6, v5, v4

    iget-object v6, p0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->mTheme:Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 9162
    iget-object v6, v6, Lcom/nuance/swype/util/storage/ThemeItemSeed;->sku:Ljava/lang/String;

    .line 292
    aput-object v6, v5, v7

    const-string/jumbo v6, " purchased:"

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->mTheme:Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 9206
    iget-boolean v6, v6, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    .line 292
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-interface {v3, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 9823
    iget-object v1, v0, Lcom/nuance/swype/inapp/CatalogManager;->mInstalledList:Lcom/nuance/swype/inapp/InstalledList;

    .line 10766
    .local v1, "installedList":Lcom/nuance/swype/inapp/InstalledList;
    iget-object v2, v0, Lcom/nuance/swype/inapp/CatalogManager;->purchasedMap:Ljava/util/Map;

    .line 297
    .local v2, "purchasedList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v3, p0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->mTheme:Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 11162
    iget-object v3, v3, Lcom/nuance/swype/util/storage/ThemeItemSeed;->sku:Ljava/lang/String;

    .line 12041
    iget-object v5, v1, Lcom/nuance/swype/inapp/InstalledList;->mInstalledMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 12042
    iget-object v5, v1, Lcom/nuance/swype/inapp/InstalledList;->mInstalledMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 297
    :goto_0
    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->mTheme:Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 12225
    iget-boolean v3, v3, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isInstalled:Z

    .line 297
    if-eqz v3, :cond_1

    .line 298
    sget-object v3, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, " theme sku:"

    aput-object v6, v5, v4

    iget-object v4, p0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->mTheme:Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 13162
    iget-object v4, v4, Lcom/nuance/swype/util/storage/ThemeItemSeed;->sku:Ljava/lang/String;

    .line 298
    aput-object v4, v5, v7

    const-string/jumbo v4, " is purchased or free and installed"

    aput-object v4, v5, v8

    invoke-interface {v3, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 299
    sget v3, Lcom/nuance/swype/input/R$drawable;->settings_theme_check:I

    .line 310
    :goto_1
    return v3

    :cond_0
    move v3, v4

    .line 12044
    goto :goto_0

    .line 302
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->mTheme:Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 13206
    iget-boolean v3, v3, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    .line 302
    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->mTheme:Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 13214
    iget-boolean v3, v3, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isFree:Z

    .line 302
    if-eqz v3, :cond_3

    :cond_2
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->mTheme:Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 14162
    iget-object v3, v3, Lcom/nuance/swype/util/storage/ThemeItemSeed;->sku:Ljava/lang/String;

    .line 303
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 304
    :cond_3
    sget-object v3, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, " theme sku:"

    aput-object v6, v5, v4

    iget-object v4, p0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->mTheme:Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 15162
    iget-object v4, v4, Lcom/nuance/swype/util/storage/ThemeItemSeed;->sku:Ljava/lang/String;

    .line 304
    aput-object v4, v5, v7

    const-string/jumbo v4, " is purchased but not installed"

    aput-object v4, v5, v8

    invoke-interface {v3, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 305
    iget-object v3, p0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->mTheme:Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 15202
    iput-boolean v7, v3, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    .line 306
    sget v3, Lcom/nuance/swype/input/R$drawable;->settings_theme_download:I

    goto :goto_1

    .line 309
    :cond_4
    sget-object v3, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, " theme sku:"

    aput-object v6, v5, v4

    iget-object v6, p0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->mTheme:Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 16162
    iget-object v6, v6, Lcom/nuance/swype/util/storage/ThemeItemSeed;->sku:Ljava/lang/String;

    .line 309
    aput-object v6, v5, v7

    const-string/jumbo v6, " display text free or price"

    aput-object v6, v5, v8

    invoke-interface {v3, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    move v3, v4

    .line 310
    goto :goto_1
.end method

.method public getStatusText(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 315
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 316
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->mTheme:Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 16250
    iget-boolean v2, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchasable:Z

    .line 316
    if-eqz v2, :cond_1

    .line 317
    iget-object v2, p0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->mTheme:Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 17194
    iget-object v0, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->price:Ljava/lang/String;

    .line 318
    .local v0, "price":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 322
    .end local v0    # "price":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 318
    .restart local v0    # "price":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;->getInstance(Landroid/content/Context;)Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->mTheme:Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 18162
    iget-object v3, v3, Lcom/nuance/swype/util/storage/ThemeItemSeed;->sku:Ljava/lang/String;

    .line 18355
    iget-object v2, v2, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;->mPriceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    .line 318
    goto :goto_0

    .line 319
    .end local v0    # "price":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->mTheme:Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 19214
    iget-boolean v2, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isFree:Z

    .line 319
    if-eqz v2, :cond_2

    .line 320
    sget v2, Lcom/nuance/swype/input/R$string;->free:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 322
    :cond_2
    const-string/jumbo v0, "  "

    goto :goto_0
.end method

.method public getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->mTheme:Lcom/nuance/swype/util/storage/ThemeItemSeed;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->mTheme:Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 7178
    iget-object v0, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->thumbnailUrl:Ljava/lang/String;

    .line 267
    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->mTheme:Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 8132
    iget v0, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->type:I

    .line 275
    return v0
.end method

.method public purchase(Landroid/app/Activity;ILcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;Landroid/content/Context;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "listener"    # Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p4, "ctx"    # Landroid/content/Context;

    .prologue
    .line 328
    invoke-static {p4}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/nuance/swype/input/ThemeManager;->getThemePurchaser(Landroid/content/Context;)Lcom/nuance/swype/inapp/ThemePurchaser;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/nuance/swype/inapp/ThemePurchaser;->purchase(Landroid/app/Activity;Ljava/lang/String;ILcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;)V

    .line 330
    return-void
.end method
