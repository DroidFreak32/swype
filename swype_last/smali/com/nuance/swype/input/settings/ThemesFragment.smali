.class public Lcom/nuance/swype/input/settings/ThemesFragment;
.super Landroid/support/v4/app/Fragment;
.source "ThemesFragment.java"

# interfaces
.implements Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;
.implements Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;
    }
.end annotation


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private bundleSku:Ljava/lang/String;

.field private delegate:Lcom/nuance/swype/input/settings/Themes;

.field private fragmentCategory:Ljava/lang/String;

.field private fragmentSource:I

.field private isThemePreviewDialogShowing:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-string/jumbo v0, "ThemesFragment"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/settings/ThemesFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/ThemesFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesFragment;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->isThemePreviewDialogShowing:Z

    return v0
.end method

.method static synthetic access$002(Lcom/nuance/swype/input/settings/ThemesFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->isThemePreviewDialogShowing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/ThemesFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->bundleSku:Ljava/lang/String;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;)Lcom/nuance/swype/input/settings/ThemesFragment;
    .registers 8
    .param p0, "arg"    # Ljava/lang/String;
    .param p1, "source"    # Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;

    .prologue
    .line 53
    sget-object v2, Lcom/nuance/swype/input/settings/ThemesFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "newInstance...arg: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "...source: "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p1, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 54
    new-instance v1, Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-direct {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;-><init>()V

    .line 56
    .local v1, "myThemes":Lcom/nuance/swype/input/settings/ThemesFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "arg"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string/jumbo v2, "source"

    invoke-virtual {p1}, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/settings/ThemesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 61
    return-object v1
.end method

.method private updateBundleThemes(Ljava/lang/String;)V
    .registers 3
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->delegate:Lcom/nuance/swype/input/settings/Themes;

    if-eqz v0, :cond_9

    .line 329
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->delegate:Lcom/nuance/swype/input/settings/Themes;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/settings/Themes;->updateBundleThemes(Ljava/lang/String;)V

    .line 331
    :cond_9
    return-void
.end method


# virtual methods
.method public getAdapterThemeCount()I
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->delegate:Lcom/nuance/swype/input/settings/Themes;

    if-eqz v0, :cond_b

    .line 335
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->delegate:Lcom/nuance/swype/input/settings/Themes;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Themes;->getThemeCount()I

    move-result v0

    .line 337
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFragmentCategory()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->fragmentCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getFragmentSource()I
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->fragmentSource:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 294
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onActivityCreated...this: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 295
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 296
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->delegate:Lcom/nuance/swype/input/settings/Themes;

    invoke-static {v0}, Lcom/nuance/swype/input/ThemeManager;->setIapObserver(Lcom/nuance/swype/input/ThemeManager$NotifyObserverDataChanged;)V

    .line 297
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 20
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    check-cast v12, Lcom/nuance/swype/input/settings/SettingsV11;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/nuance/swype/input/settings/SettingsV11;->setActivityResulted(Z)V

    .line 343
    const/4 v10, 0x0

    .line 344
    .local v10, "themeId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 345
    .local v3, "categoryId":Ljava/lang/String;
    if-eqz p3, :cond_24

    .line 346
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string/jumbo v13, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_id"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 347
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string/jumbo v13, "com.nuance.swype.input.settings.PopupDialogThemeActivity.category_id"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 349
    :cond_24
    const/16 v12, 0x2711

    move/from16 v0, p1

    if-ne v0, v12, :cond_1af

    .line 350
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_150

    .line 351
    sget-object v12, Lcom/nuance/swype/input/settings/ThemesFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "purchased "

    aput-object v15, v13, v14

    invoke-interface {v12, v13}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 352
    if-eqz p3, :cond_102

    .line 353
    if-eqz v10, :cond_ec

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v11

    .line 357
    .local v11, "themeManager":Lcom/nuance/swype/input/ThemeManager;
    invoke-virtual {v11}, Lcom/nuance/swype/input/ThemeManager;->getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;

    .line 1051
    invoke-static {v10, v3}, Lcom/nuance/swype/util/storage/ThemeData;->getThemeSeed(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v8

    .line 1136
    .local v8, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    iget-object v4, v8, Lcom/nuance/swype/util/storage/ThemeItemSeed;->themeCategories:Ljava/util/List;

    .line 360
    .local v4, "categoryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_a0

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nuance/swype/connect/Connect;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v6

    .line 363
    .local v6, "cs":Lcom/nuance/swypeconnect/ac/ACCatalogService;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6c
    :goto_6c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 364
    .local v2, "category":Ljava/lang/String;
    invoke-interface {v6, v2}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->getCategoryKeyForCategoryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 365
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/nuance/swype/input/ThemeManager;->getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;

    .line 2051
    invoke-static {v10, v7}, Lcom/nuance/swype/util/storage/ThemeData;->getThemeSeed(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v8

    .line 366
    if-eqz v8, :cond_6c

    .line 2202
    const/4 v13, 0x1

    iput-boolean v13, v8, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    .line 368
    invoke-virtual {v11}, Lcom/nuance/swype/input/ThemeManager;->getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;

    .line 3035
    invoke-static {v8}, Lcom/nuance/swype/util/storage/ThemeData;->update(Lcom/nuance/swype/util/storage/ThemeItemSeed;)Z

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v13

    sget-object v14, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_PURCHASED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .line 370
    invoke-virtual {v13, v10, v14}, Lcom/nuance/swype/input/ThemeManager;->updateThemeStatus(Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V

    goto :goto_6c

    .line 375
    .end local v2    # "category":Ljava/lang/String;
    .end local v6    # "cs":Lcom/nuance/swypeconnect/ac/ACCatalogService;
    .end local v7    # "key":Ljava/lang/String;
    :cond_a0
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 374
    invoke-static {v12}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v12

    .line 375
    invoke-virtual {v12}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v5

    .line 376
    .local v5, "cm":Lcom/nuance/swype/inapp/CatalogManager;
    if-eqz v8, :cond_d8

    .line 378
    if-eqz v5, :cond_bb

    .line 379
    :try_start_b4
    invoke-virtual {v5}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v12

    invoke-interface {v12, v10}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->setPurchasedSKU(Ljava/lang/String;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_bb} :catch_13a

    .line 3132
    :cond_bb
    :goto_bb
    iget v12, v8, Lcom/nuance/swype/util/storage/ThemeItemSeed;->type:I

    .line 384
    const/4 v13, 0x1

    if-ne v12, v13, :cond_d8

    .line 3162
    iget-object v12, v8, Lcom/nuance/swype/util/storage/ThemeItemSeed;->sku:Ljava/lang/String;

    .line 387
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/nuance/swype/input/settings/ThemesFragment;->updateBundleThemes(Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v12

    sget-object v13, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_PURCHASED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .line 391
    invoke-virtual {v12, v3, v10, v13}, Lcom/nuance/swype/input/ThemeManager;->updateBundleThemeStatus(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V

    .line 396
    :cond_d8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/settings/ThemesFragment;->delegate:Lcom/nuance/swype/input/settings/Themes;

    sget-object v14, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_PURCHASED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .line 4132
    iget v12, v8, Lcom/nuance/swype/util/storage/ThemeItemSeed;->type:I

    .line 398
    sget-object v15, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->BUNDLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    invoke-virtual {v15}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->ordinal()I

    move-result v15

    if-ne v12, v15, :cond_14e

    const/4 v12, 0x1

    .line 396
    :goto_e9
    invoke-virtual {v13, v3, v10, v14, v12}, Lcom/nuance/swype/input/settings/Themes;->updateStatusInThemesAdapter(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;Z)V

    .line 401
    .end local v4    # "categoryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "cm":Lcom/nuance/swype/inapp/CatalogManager;
    .end local v8    # "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    .end local v11    # "themeManager":Lcom/nuance/swype/input/ThemeManager;
    :cond_ec
    const-string/jumbo v12, "com.nuance.swype.input.settings.PopupDialogThemeActivity.Dialog_request"

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const/16 v13, 0x2713

    if-ne v12, v13, :cond_102

    .line 403
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/settings/ThemesFragment;->delegate:Lcom/nuance/swype/input/settings/Themes;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v10, v3}, Lcom/nuance/swype/input/settings/Themes;->showInstallThemeDialog(ILjava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_102
    :goto_102
    const/16 v12, 0x2713

    move/from16 v0, p1

    if-ne v0, v12, :cond_131

    .line 447
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_213

    .line 448
    if-eqz p3, :cond_131

    .line 449
    if-eqz v10, :cond_131

    .line 450
    sget-object v12, Lcom/nuance/swype/input/settings/ThemesFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "theme sku:"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v10, v13, v14

    const/4 v14, 0x2

    const-string/jumbo v15, "...category: "

    aput-object v15, v13, v14

    const/4 v14, 0x3

    aput-object v3, v13, v14

    const/4 v14, 0x4

    const-string/jumbo v15, "begin to install"

    aput-object v15, v13, v14

    invoke-interface {v12, v13}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 457
    :cond_131
    :goto_131
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/nuance/swype/input/settings/ThemesFragment;->isThemePreviewDialogShowing:Z

    .line 458
    invoke-super/range {p0 .. p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 459
    return-void

    .line 382
    .restart local v4    # "categoryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "cm":Lcom/nuance/swype/inapp/CatalogManager;
    .restart local v8    # "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    .restart local v11    # "themeManager":Lcom/nuance/swype/input/ThemeManager;
    :catch_13a
    move-exception v12

    sget-object v12, Lcom/nuance/swype/input/settings/ThemesFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "Failed to mark a catalog item as purchased. sku:"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v10, v13, v14

    invoke-interface {v12, v13}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto/16 :goto_bb

    .line 398
    :cond_14e
    const/4 v12, 0x0

    goto :goto_e9

    .line 408
    .end local v4    # "categoryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "cm":Lcom/nuance/swype/inapp/CatalogManager;
    .end local v8    # "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    .end local v11    # "themeManager":Lcom/nuance/swype/input/ThemeManager;
    :cond_150
    const/16 v12, 0x2716

    move/from16 v0, p2

    if-ne v0, v12, :cond_168

    .line 409
    if-eqz v3, :cond_102

    if-eqz v10, :cond_102

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_102

    .line 410
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/settings/ThemesFragment;->delegate:Lcom/nuance/swype/input/settings/Themes;

    invoke-virtual {v12, v3, v10}, Lcom/nuance/swype/input/settings/Themes;->showBundleView(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_102

    .line 412
    :cond_168
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_19f

    .line 413
    invoke-static {}, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountMissing()Z

    move-result v12

    if-nez v12, :cond_179

    invoke-static {}, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountSignedIn()Z

    move-result v12

    if-nez v12, :cond_19f

    .line 415
    :cond_179
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 414
    invoke-static {v12}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v12

    .line 415
    invoke-virtual {v12}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v1

    .line 416
    .local v1, "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    if-eqz v1, :cond_18e

    .line 417
    invoke-virtual {v1}, Lcom/nuance/swype/inapp/CatalogManager;->triggerShowingThemesWithoutPrices()V

    .line 419
    :cond_18e
    invoke-static {}, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountMissing()Z

    move-result v12

    if-eqz v12, :cond_102

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    check-cast v12, Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-virtual {v12}, Lcom/nuance/swype/input/settings/SettingsV11;->showGoogleAccountMissingDialog()Z

    goto/16 :goto_102

    .line 423
    .end local v1    # "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    :cond_19f
    sget-object v12, Lcom/nuance/swype/input/settings/ThemesFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "purchase cancelled"

    aput-object v15, v13, v14

    invoke-interface {v12, v13}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto/16 :goto_102

    .line 425
    :cond_1af
    const/16 v12, 0x2712

    move/from16 v0, p1

    if-ne v0, v12, :cond_1e1

    .line 426
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_102

    .line 427
    if-eqz v10, :cond_102

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 428
    invoke-static {v12}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v12

    .line 429
    invoke-virtual {v12}, Lcom/nuance/swype/input/IMEApplication;->getThemeManager()Lcom/nuance/swype/input/ThemeManager;

    move-result-object v12

    .line 430
    invoke-virtual {v12, v3, v10}, Lcom/nuance/swype/input/ThemeManager;->getSwypeTheme(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v9

    .line 431
    .local v9, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/settings/ThemesFragment;->delegate:Lcom/nuance/swype/input/settings/Themes;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v12, v9, v10, v13}, Lcom/nuance/swype/input/settings/Themes;->applyTheme(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_102

    .line 434
    .end local v9    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_1e1
    const/16 v12, 0x2715

    move/from16 v0, p1

    if-ne v0, v12, :cond_102

    .line 436
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_102

    .line 437
    if-eqz v10, :cond_102

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 438
    invoke-static {v12}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v12

    .line 439
    invoke-virtual {v12}, Lcom/nuance/swype/input/IMEApplication;->getThemeManager()Lcom/nuance/swype/input/ThemeManager;

    move-result-object v12

    .line 440
    invoke-virtual {v12, v3, v10}, Lcom/nuance/swype/input/ThemeManager;->getSwypeTheme(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v9

    .line 441
    .restart local v9    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/settings/ThemesFragment;->delegate:Lcom/nuance/swype/input/settings/Themes;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v12, v9, v10, v13}, Lcom/nuance/swype/input/settings/Themes;->applyTheme(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_102

    .line 454
    .end local v9    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_213
    sget-object v12, Lcom/nuance/swype/input/settings/ThemesFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "install cancelled"

    aput-object v15, v13, v14

    invoke-interface {v12, v13}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto/16 :goto_131
.end method

.method public onCatalogItemListChanged()V
    .registers 1

    .prologue
    .line 471
    return-void
.end method

.method public onCatalogItemStatusChanged(ILcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V
    .registers 15
    .param p1, "index"    # I
    .param p2, "theme"    # Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "sku"    # Ljava/lang/String;
    .param p5, "state"    # Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 476
    sget-object v1, Lcom/nuance/swype/input/settings/ThemesFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "onCatalogItemStatusChanged...item: categoryId:"

    aput-object v3, v2, v4

    aput-object p3, v2, v5

    const-string/jumbo v3, " sku:"

    aput-object v3, v2, v6

    aput-object p4, v2, v7

    const-string/jumbo v3, "...state: "

    aput-object v3, v2, v8

    const/4 v3, 0x5

    aput-object p5, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 478
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->delegate:Lcom/nuance/swype/input/settings/Themes;

    if-nez v1, :cond_3d

    .line 479
    sget-object v1, Lcom/nuance/swype/input/settings/ThemesFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "themesFragment delegate == null onCatalogItemStatusChanged...item: label:"

    aput-object v3, v2, v4

    aput-object p3, v2, v5

    const-string/jumbo v3, " sku:"

    aput-object v3, v2, v6

    aput-object p4, v2, v7

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 497
    :cond_3c
    :goto_3c
    return-void

    .line 483
    :cond_3d
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_NOSTATE:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-eq p5, v1, :cond_46

    .line 484
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->delegate:Lcom/nuance/swype/input/settings/Themes;

    invoke-virtual {v1, p3, p4, p5, v4}, Lcom/nuance/swype/input/settings/Themes;->updateStatusInThemesAdapter(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;Z)V

    .line 486
    :cond_46
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_UNINSTALLED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-ne p5, v1, :cond_5a

    iget v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->fragmentSource:I

    sget-object v2, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->MY_THEMES:Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;

    .line 487
    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_5a

    .line 490
    const-string/jumbo v1, "my_themes"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->updateThemes(Ljava/lang/String;)V

    .line 493
    :cond_5a
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-ne p5, v1, :cond_3c

    .line 494
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 495
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->delegate:Lcom/nuance/swype/input/settings/Themes;

    invoke-virtual {v1, p2, p4, v0}, Lcom/nuance/swype/input/settings/Themes;->applyTheme(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_3c
.end method

.method public onCatalogItemSubListChanged()V
    .registers 1

    .prologue
    .line 517
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onCreate...this: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 18
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v4, "onCreateView...this: "

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/ThemesFragment;->setHasOptionsMenu(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "arg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "category":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "bundle_sku"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->bundleSku:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "isBundle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 85
    .local v6, "isBundle":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->fragmentSource:I

    .line 86
    iput-object v3, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->fragmentCategory:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/nuance/swype/input/settings/ThemesFragment$1;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->bundleSku:Ljava/lang/String;

    iget v5, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->fragmentSource:I

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/settings/ThemesFragment$1;-><init>(Lcom/nuance/swype/input/settings/ThemesFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->delegate:Lcom/nuance/swype/input/settings/Themes;

    .line 282
    if-eqz v6, :cond_74

    .line 284
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v13

    .line 285
    .local v13, "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    if-eqz v13, :cond_74

    .line 286
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;->BUNDLE:Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    invoke-virtual {v13, p0, v0}, Lcom/nuance/swype/inapp/CatalogManager;->setCatalogCallBackListener(Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;)V

    .line 289
    .end local v13    # "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    :cond_74
    iget-object v7, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->delegate:Lcom/nuance/swype/input/settings/Themes;

    iget-object v12, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->bundleSku:Ljava/lang/String;

    move-object v8, p1

    move-object/from16 v9, p2

    move v10, v6

    move-object v11, v3

    invoke-virtual/range {v7 .. v12}, Lcom/nuance/swype/input/settings/Themes;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 501
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onDestroy...this: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 502
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 503
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->delegate:Lcom/nuance/swype/input/settings/Themes;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Themes;->onDestroy()V

    .line 504
    iput-object v4, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->delegate:Lcom/nuance/swype/input/settings/Themes;

    .line 505
    invoke-static {v4}, Lcom/nuance/swype/input/ThemeManager;->setIapObserver(Lcom/nuance/swype/input/ThemeManager$NotifyObserverDataChanged;)V

    .line 506
    return-void
.end method

.method public onPause()V
    .registers 5

    .prologue
    .line 311
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onPause...this: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 312
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 313
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 301
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onResume...isHidden(): "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesFragment;->isHidden()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "...hasOptionsMenu(): "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesFragment;->hasOptionsMenu()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "...isMenuVisible(): "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 302
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesFragment;->isMenuVisible()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 301
    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 303
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 304
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->delegate:Lcom/nuance/swype/input/settings/Themes;

    if-eqz v0, :cond_47

    .line 305
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->delegate:Lcom/nuance/swype/input/settings/Themes;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Themes;->onResume()V

    .line 307
    :cond_47
    return-void
.end method

.method public onStop()V
    .registers 5

    .prologue
    .line 317
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onStop...this: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 318
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 319
    return-void
.end method

.method public onThemePreivewDialogClosed()V
    .registers 2

    .prologue
    .line 464
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->isThemePreviewDialogShowing:Z

    .line 465
    return-void
.end method

.method public setCurrentTheme()V
    .registers 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->delegate:Lcom/nuance/swype/input/settings/Themes;

    if-eqz v0, :cond_9

    .line 510
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->delegate:Lcom/nuance/swype/input/settings/Themes;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Themes;->setCurrentTheme()V

    .line 512
    :cond_9
    return-void
.end method

.method public updateThemes(Ljava/lang/String;)V
    .registers 3
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->delegate:Lcom/nuance/swype/input/settings/Themes;

    if-eqz v0, :cond_9

    .line 323
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesFragment;->delegate:Lcom/nuance/swype/input/settings/Themes;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/settings/Themes;->updateThemes(Ljava/lang/String;)V

    .line 325
    :cond_9
    return-void
.end method
