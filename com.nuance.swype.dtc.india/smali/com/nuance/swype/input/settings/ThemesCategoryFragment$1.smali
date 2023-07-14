.class Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;
.super Lcom/nuance/swype/input/settings/ThemesCategory;
.source "ThemesCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ThemesCategoryFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/ThemesCategoryFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/ThemesCategory;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected restorePurchases()V
    .locals 16

    .prologue
    const/4 v15, 0x1

    const/4 v14, 0x0

    .line 180
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v8}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    if-nez v8, :cond_1

    .line 217
    :cond_0
    return-void

    .line 184
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v8}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v8

    .line 185
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v9}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/nuance/swype/input/ThemeManager;->getCategoryThemes(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v6

    .line 186
    .local v6, "themes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v7, "toBeResored":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 188
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 189
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 190
    .local v3, "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    instance-of v8, v3, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    if-eqz v8, :cond_3

    move-object v8, v3

    .line 191
    check-cast v8, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v8}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v4

    .line 192
    .local v4, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    if-eqz v4, :cond_3

    .line 1206
    iget-boolean v8, v4, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    .line 192
    if-eqz v8, :cond_3

    .line 1225
    iget-boolean v8, v4, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isInstalled:Z

    .line 192
    if-nez v8, :cond_3

    .line 194
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;>;"
    .end local v3    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .end local v4    # "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    :cond_4
    sget-object v8, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v9, v15, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "to be restored themes: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v14

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v8}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v8

    .line 204
    invoke-virtual {v8}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v1

    .line 205
    .local v1, "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    if-eqz v1, :cond_0

    .line 206
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 208
    .local v5, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    const/4 v10, 0x0

    :try_start_0
    move-object v0, v5

    check-cast v0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-object v8, v0

    invoke-virtual {v1, v10, v8}, Lcom/nuance/swype/inapp/CatalogManager;->downloadTheme(ILcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;)V

    .line 209
    sget-object v8, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Downloaded theme sku is:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-interface {v8, v10}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 211
    :catch_0
    move-exception v8

    sget-object v8, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v10, "Download of theme failed. SKU: %s"

    new-array v11, v15, [Ljava/lang/Object;

    .line 213
    invoke-virtual {v5}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v14

    .line 211
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected showApplyThemeDialog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 65
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string/jumbo v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.category_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string/jumbo v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_view_index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    const-string/jumbo v2, "extra_theme_source"

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/SettingsV11;->getCurrentFragmentSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    const/16 v2, 0x2712

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected showBundleView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "bundleSku"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    .line 130
    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 129
    invoke-static {v0, v1}, Lcom/nuance/swype/input/store/ThemeFragmentController;->newInstance(Landroid/content/Context;Landroid/support/v4/app/FragmentActivity;)Lcom/nuance/swype/input/store/ThemeFragmentController;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->BUY_THEMES:Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;

    .line 130
    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/nuance/swype/input/store/ThemeFragmentController;->ShowBundleFragments(Ljava/lang/String;Ljava/lang/String;ILandroid/support/v4/app/FragmentActivity;)V

    goto :goto_0
.end method

.method protected showGoogleAccountErrorDialog()V
    .locals 1

    .prologue
    .line 264
    invoke-static {}, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountMissing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsV11;->showGoogleAccountMissingDialog()Z

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-static {}, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsV11;->showGoogleAccountLoginFailedDialog()Z

    goto :goto_0
.end method

.method protected showInstallThemeDialog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2713

    .line 135
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->access$000(Lcom/nuance/swype/input/settings/ThemesCategoryFragment;)Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->access$000(Lcom/nuance/swype/input/settings/ThemesCategoryFragment;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    .line 147
    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 146
    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 147
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getThemeManager()Lcom/nuance/swype/input/ThemeManager;

    move-result-object v1

    .line 149
    .local v1, "themeManager":Lcom/nuance/swype/input/ThemeManager;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_sku"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string/jumbo v2, "com.nuance.swype.input.settings.PopupDialogThemeActivity.category_id"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string/jumbo v2, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_view_index"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    const-string/jumbo v2, "com.nuance.swype.input.settings.PopupDialogThemeActivity.Dialog_request"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    const-string/jumbo v3, "extra_theme_source"

    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/SettingsV11;->getCurrentFragmentSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const/high16 v2, 0x24000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 157
    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/ThemeManager;->setThemesCategory(Lcom/nuance/swype/input/settings/ThemesCategory;)V

    .line 159
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v2, v0, v4}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected showMoreThemes(Ljava/lang/String;)V
    .locals 2
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    .line 117
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 116
    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeManager()Lcom/nuance/swype/input/ThemeManager;

    move-result-object v0

    .line 118
    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/ThemeManager;->setCurrentThemesCategory(Lcom/nuance/swype/input/settings/ThemesCategory;)V

    .line 120
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    .line 121
    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 120
    invoke-static {v0, v1}, Lcom/nuance/swype/input/store/ThemeFragmentController;->newInstance(Landroid/content/Context;Landroid/support/v4/app/FragmentActivity;)Lcom/nuance/swype/input/store/ThemeFragmentController;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    .line 121
    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nuance/swype/input/store/ThemeFragmentController;->ShowViewAllTabFragments(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0
.end method

.method protected showPurchaseFlowDialog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->access$000(Lcom/nuance/swype/input/settings/ThemesCategoryFragment;)Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->access$000(Lcom/nuance/swype/input/settings/ThemesCategoryFragment;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    .line 90
    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 89
    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getThemeManager()Lcom/nuance/swype/input/ThemeManager;

    move-result-object v1

    .line 92
    .local v1, "themeManager":Lcom/nuance/swype/input/ThemeManager;
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v2

    .line 93
    invoke-virtual {v2}, Lcom/nuance/swype/input/BuildInfo;->isGoogleTrialBuild()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 94
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v1, v3, v4}, Lcom/nuance/swype/input/ThemeManager;->showNotAvailableDialogForGoogleTrial(Landroid/content/Context;Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;)Landroid/app/Dialog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->access$002(Lcom/nuance/swype/input/settings/ThemesCategoryFragment;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 96
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->access$000(Lcom/nuance/swype/input/settings/ThemesCategoryFragment;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 99
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_sku"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string/jumbo v2, "com.nuance.swype.input.settings.PopupDialogThemeActivity.category_id"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string/jumbo v2, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_view_index"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    const-string/jumbo v3, "extra_theme_source"

    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/SettingsV11;->getCurrentFragmentSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const/high16 v2, 0x24000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 105
    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/ThemeManager;->setThemesCategory(Lcom/nuance/swype/input/settings/ThemesCategory;)V

    .line 107
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    const/16 v3, 0x2711

    invoke-virtual {v2, v0, v3}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method protected showUninstallThemeDialog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x2715

    .line 164
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 176
    :goto_0
    return-void

    .line 167
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_sku"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string/jumbo v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.category_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string/jumbo v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_view_index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    const-string/jumbo v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.Dialog_request"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    const-string/jumbo v2, "extra_theme_source"

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/SettingsV11;->getCurrentFragmentSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 175
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v1, v0, v3}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected uninstallThemes()V
    .locals 16

    .prologue
    const/4 v15, 0x1

    const/4 v14, 0x0

    .line 221
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v8}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    if-nez v8, :cond_1

    .line 260
    :cond_0
    return-void

    .line 225
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v8}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v8

    .line 226
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v9}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/nuance/swype/input/ThemeManager;->getCategoryThemes(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v6

    .line 227
    .local v6, "themes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v7, "toBeUninstalled":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 229
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 230
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 231
    .local v3, "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    instance-of v8, v3, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    if-eqz v8, :cond_3

    move-object v8, v3

    .line 232
    check-cast v8, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v8}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v4

    .line 233
    .local v4, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    if-eqz v4, :cond_3

    .line 2225
    iget-boolean v8, v4, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isInstalled:Z

    .line 233
    if-eqz v8, :cond_3

    .line 235
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 241
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;>;"
    .end local v3    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .end local v4    # "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    :cond_4
    sget-object v8, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v9, v15, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "to be removed themes: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v14

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v8}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v8

    .line 245
    invoke-virtual {v8}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v1

    .line 246
    .local v1, "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    if-eqz v1, :cond_0

    .line 247
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 249
    .local v5, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    const/4 v10, 0x0

    :try_start_0
    move-object v0, v5

    check-cast v0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-object v8, v0

    .line 250
    invoke-virtual {v8}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v8

    .line 3120
    iget-object v8, v8, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 251
    invoke-virtual {v5}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v11

    .line 249
    invoke-virtual {v1, v10, v8, v11}, Lcom/nuance/swype/inapp/CatalogManager;->uninstallTheme(ILjava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-object v8, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "to be removed theme sku is:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-interface {v8, v10}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 254
    :catch_0
    move-exception v8

    sget-object v8, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v10, "removable of theme failed. SKU: %s"

    new-array v11, v15, [Ljava/lang/Object;

    .line 256
    invoke-virtual {v5}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v14

    .line 254
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method
