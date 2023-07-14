.class public Lcom/nuance/swype/input/settings/ThemesCategoryFragment;
.super Landroid/support/v4/app/Fragment;
.source "ThemesCategoryFragment.java"

# interfaces
.implements Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;
.implements Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;
.implements Lcom/nuance/swype/input/settings/SettingsV11$KeyUpListener;


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

.field private dialog:Landroid/app/Dialog;

.field private themeManager:Lcom/nuance/swype/input/ThemeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "ThemesCategoryFragment"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/ThemesCategoryFragment;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nuance/swype/input/settings/ThemesCategoryFragment;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesCategoryFragment;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/nuance/swype/input/settings/ThemesCategoryFragment;
    .locals 3
    .param p0, "arg"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v1, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-direct {v1}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;-><init>()V

    .line 46
    .local v1, "getThemes":Lcom/nuance/swype/input/settings/ThemesCategoryFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "arg"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 275
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onActivityCreated..."

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 276
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 277
    invoke-static {v3}, Lcom/nuance/swype/input/ThemeManager;->setUpdateNotificationAllowed(Z)V

    .line 278
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 315
    const/4 v10, 0x0

    .line 316
    .local v10, "themeId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 317
    .local v3, "categoryId":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 318
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_id"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 319
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "com.nuance.swype.input.settings.PopupDialogThemeActivity.category_id"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 321
    :cond_0
    const/16 v11, 0x2711

    move/from16 v0, p1

    if-ne v0, v11, :cond_a

    .line 322
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_5

    .line 323
    sget-object v11, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "purchased "

    aput-object v14, v12, v13

    invoke-interface {v11, v12}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 324
    if-eqz p3, :cond_4

    .line 325
    if-eqz v10, :cond_4

    .line 326
    iget-object v11, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    invoke-virtual {v11}, Lcom/nuance/swype/input/ThemeManager;->getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;

    .line 1051
    invoke-static {v10, v3}, Lcom/nuance/swype/util/storage/ThemeData;->getThemeSeed(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v11

    .line 1136
    iget-object v4, v11, Lcom/nuance/swype/util/storage/ThemeItemSeed;->themeCategories:Ljava/util/List;

    .line 329
    .local v4, "categoryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    .line 330
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-static {v11}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nuance/swype/connect/Connect;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v6

    .line 331
    .local v6, "cs":Lcom/nuance/swypeconnect/ac/ACCatalogService;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 332
    .local v2, "category":Ljava/lang/String;
    invoke-interface {v6, v2}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->getCategoryKeyForCategoryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 333
    .local v7, "key":Ljava/lang/String;
    iget-object v12, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    invoke-virtual {v12}, Lcom/nuance/swype/input/ThemeManager;->getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;

    .line 2051
    invoke-static {v10, v7}, Lcom/nuance/swype/util/storage/ThemeData;->getThemeSeed(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v8

    .line 334
    .local v8, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    if-eqz v8, :cond_1

    .line 2202
    const/4 v12, 0x1

    iput-boolean v12, v8, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    .line 336
    iget-object v12, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    invoke-virtual {v12}, Lcom/nuance/swype/input/ThemeManager;->getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;

    .line 3035
    invoke-static {v8}, Lcom/nuance/swype/util/storage/ThemeData;->update(Lcom/nuance/swype/util/storage/ThemeItemSeed;)Z

    .line 337
    iget-object v12, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    sget-object v13, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_PURCHASED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    invoke-virtual {v12, v10, v13}, Lcom/nuance/swype/input/ThemeManager;->updateThemeStatus(Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V

    goto :goto_0

    .line 342
    .end local v2    # "category":Ljava/lang/String;
    .end local v6    # "cs":Lcom/nuance/swypeconnect/ac/ACCatalogService;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v5

    .line 343
    .local v5, "cm":Lcom/nuance/swype/inapp/CatalogManager;
    if-eqz v5, :cond_3

    .line 344
    invoke-virtual {v5}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v11

    invoke-interface {v11, v10}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->setPurchasedSKU(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .end local v5    # "cm":Lcom/nuance/swype/inapp/CatalogManager;
    :cond_3
    :goto_1
    iget-object v11, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    sget-object v12, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_PURCHASED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    invoke-virtual {v11, v10, v12}, Lcom/nuance/swype/input/settings/ThemesCategory;->updateStatusInThemesAdapter(Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V

    .line 352
    iget-object v11, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-virtual {v11, v10, v3}, Lcom/nuance/swype/input/settings/ThemesCategory;->updateThemeThumbListAdapter(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string/jumbo v11, "com.nuance.swype.input.settings.PopupDialogThemeActivity.Dialog_request"

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const/16 v12, 0x2713

    if-ne v11, v12, :cond_4

    .line 355
    iget-object v11, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v10, v3}, Lcom/nuance/swype/input/settings/ThemesCategory;->showInstallThemeDialog(ILjava/lang/String;Ljava/lang/String;)V

    .line 406
    .end local v4    # "categoryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :goto_2
    invoke-super/range {p0 .. p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 407
    return-void

    .line 347
    .restart local v4    # "categoryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 348
    sget-object v11, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "Failed to mark a catalog item as purchased."

    aput-object v14, v12, v13

    invoke-interface {v11, v12}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_1

    .line 359
    .end local v4    # "categoryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const/16 v11, 0x2716

    move/from16 v0, p2

    if-ne v0, v11, :cond_6

    .line 360
    if-eqz v3, :cond_4

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 361
    iget-object v11, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-virtual {v11, v3, v10}, Lcom/nuance/swype/input/settings/ThemesCategory;->showBundleView(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 363
    :cond_6
    const/4 v11, 0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_9

    .line 364
    invoke-static {}, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountMissing()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-static {}, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountSignedIn()Z

    move-result v11

    if-nez v11, :cond_9

    .line 366
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    .line 365
    invoke-static {v11}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v11

    .line 366
    invoke-virtual {v11}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v1

    .line 367
    .local v1, "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    if-eqz v1, :cond_8

    .line 368
    invoke-virtual {v1}, Lcom/nuance/swype/inapp/CatalogManager;->triggerShowingThemesWithoutPrices()V

    .line 370
    :cond_8
    invoke-static {}, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountMissing()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 371
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    check-cast v11, Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-virtual {v11}, Lcom/nuance/swype/input/settings/SettingsV11;->showGoogleAccountMissingDialog()Z

    goto :goto_2

    .line 374
    .end local v1    # "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    :cond_9
    sget-object v11, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "purchase cancelled"

    aput-object v14, v12, v13

    invoke-interface {v11, v12}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_2

    .line 376
    :cond_a
    const/16 v11, 0x2712

    move/from16 v0, p1

    if-ne v0, v11, :cond_b

    .line 377
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_4

    .line 378
    if-eqz v10, :cond_4

    .line 379
    iget-object v11, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    invoke-virtual {v11, v3, v10}, Lcom/nuance/swype/input/ThemeManager;->getSwypeTheme(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v9

    .line 380
    .local v9, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    iget-object v11, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v9, v10, v12}, Lcom/nuance/swype/input/settings/ThemesCategory;->applyTheme(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_2

    .line 383
    .end local v9    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_b
    const/16 v11, 0x2715

    move/from16 v0, p1

    if-ne v0, v11, :cond_c

    .line 385
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_4

    .line 386
    if-eqz v10, :cond_4

    .line 387
    iget-object v11, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    invoke-virtual {v11, v3, v10}, Lcom/nuance/swype/input/ThemeManager;->getSwypeTheme(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v9

    .line 388
    .restart local v9    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    iget-object v11, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v9, v10, v12}, Lcom/nuance/swype/input/settings/ThemesCategory;->applyTheme(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_2

    .line 391
    .end local v9    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_c
    const/16 v11, 0x2713

    move/from16 v0, p1

    if-ne v0, v11, :cond_4

    .line 392
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_d

    .line 393
    if-eqz p3, :cond_4

    .line 394
    if-eqz v10, :cond_4

    .line 395
    sget-object v11, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "theme sku:"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v10, v12, v13

    const/4 v13, 0x2

    const-string/jumbo v14, "begin to install "

    aput-object v14, v12, v13

    invoke-interface {v11, v12}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 399
    :cond_d
    if-eqz v3, :cond_e

    .line 400
    iget-object v11, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-virtual {v11, v3}, Lcom/nuance/swype/input/settings/ThemesCategory;->notifyThumbAdapterDataSetChanged(Ljava/lang/String;)V

    .line 403
    :cond_e
    sget-object v11, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "install cancelled"

    aput-object v14, v12, v13

    invoke-interface {v11, v12}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method public onCatalogItemListChanged()V
    .locals 4

    .prologue
    .line 428
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    if-eqz v0, :cond_0

    .line 429
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onCatalogItemListChanged refresh UI"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 430
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesCategory;->updateThemeCategoryAdapter()V

    .line 432
    :cond_0
    return-void
.end method

.method public onCatalogItemStatusChanged(ILcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V
    .locals 10
    .param p1, "index"    # I
    .param p2, "theme"    # Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "sku"    # Ljava/lang/String;
    .param p5, "state"    # Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 437
    sget-object v1, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "onCatalogItemStatusChanged...item: index: "

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const-string/jumbo v3, "...categoryId:"

    aput-object v3, v2, v7

    aput-object p3, v2, v8

    const-string/jumbo v3, " sku:"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    aput-object p4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "...state: "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object p5, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 439
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    if-eqz v1, :cond_2

    .line 440
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_NOSTATE:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-eq p5, v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-virtual {v1, p3, p4, p5}, Lcom/nuance/swype/input/settings/ThemesCategory;->updateStatusInThemesAdapter(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V

    .line 443
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-virtual {v1, p4, p3}, Lcom/nuance/swype/input/settings/ThemesCategory;->updateThemeThumbListAdapter(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-ne p5, v1, :cond_1

    .line 445
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 446
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-virtual {v1, p2, p4, v0}, Lcom/nuance/swype/input/settings/ThemesCategory;->applyTheme(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;Ljava/lang/String;Landroid/content/Context;)V

    .line 451
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    :goto_0
    return-void

    .line 449
    :cond_2
    sget-object v1, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v9, [Ljava/lang/Object;

    const-string/jumbo v3, "themesCategoryFragment delegate == null onCatalogItemStatusChanged...item: label:"

    aput-object v3, v2, v5

    aput-object p3, v2, v6

    const-string/jumbo v3, " sku:"

    aput-object v3, v2, v7

    aput-object p4, v2, v8

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCatalogItemSubListChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 461
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    if-eqz v0, :cond_0

    .line 462
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onCatalogItemSubListChanged..."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 463
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-virtual {v0, v4, v4}, Lcom/nuance/swype/input/settings/ThemesCategory;->updateAllThumbListAdapter(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    sget-object v1, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "onCreate..."

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    .line 58
    new-instance v1, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;-><init>(Lcom/nuance/swype/input/settings/ThemesCategoryFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    .line 271
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 307
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onCreateOptionsMenu...menu: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 308
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 309
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 411
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->setHasOptionsMenu(Z)V

    .line 412
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/ThemesCategory;->onCreateCategoryListView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 295
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onDestroy..."

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 296
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 297
    invoke-static {v3}, Lcom/nuance/swype/input/ThemeManager;->setUpdateNotificationAllowed(Z)V

    .line 298
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesCategory;->onDestroy()V

    .line 300
    iput-object v4, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/ThemeManager;->setThemesCategory(Lcom/nuance/swype/input/settings/ThemesCategory;)V

    .line 303
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 289
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onPause..."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 290
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 291
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 282
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onResume..."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 283
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 284
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesCategory;->refreshCategoryListView()V

    .line 285
    return-void
.end method

.method public onThemePreivewDialogClosed()V
    .locals 0

    .prologue
    .line 418
    return-void
.end method

.method public updateThemes()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesCategory;->updateThemeCategoryAdapter()V

    .line 457
    :cond_0
    return-void
.end method
