.class Lcom/nuance/swype/input/settings/ThemesFragment$1;
.super Lcom/nuance/swype/input/settings/Themes;
.source "ThemesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ThemesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ThemesFragment;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ThemesFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 13
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/ThemesFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "bundleSku"    # Ljava/lang/String;
    .param p5, "source"    # I
    .param p6, "isBundle"    # Z

    .prologue
    .line 88
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/settings/Themes;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method protected navigateBackFromBundlePage()V
    .registers 3

    .prologue
    .line 147
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/SettingsV11;->getTabHostManager()Lcom/nuance/swype/input/store/ThemeTabHostManager;

    move-result-object v0

    .line 148
    .local v0, "tabHostManager":Lcom/nuance/swype/input/store/ThemeTabHostManager;
    if-eqz v0, :cond_11

    .line 149
    invoke-virtual {v0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->onBackPressed()Z

    .line 151
    :cond_11
    return-void
.end method

.method protected restorePurchases()V
    .registers 17

    .prologue
    const/4 v15, 0x1

    const/4 v14, 0x0

    .line 192
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v8}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v8

    .line 193
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    .line 194
    invoke-virtual {v9}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/nuance/swype/input/ThemeManager;->getCategoryThemes(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v6

    .line 195
    .local v6, "themes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v7, "toBeResored":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 197
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2f

    .line 198
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_57
    :goto_57
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 199
    .local v3, "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    instance-of v8, v3, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    if-eqz v8, :cond_57

    move-object v8, v3

    .line 200
    check-cast v8, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 201
    invoke-virtual {v8}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v4

    .line 202
    .local v4, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    if-eqz v4, :cond_57

    .line 1206
    iget-boolean v8, v4, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    .line 202
    if-eqz v8, :cond_57

    .line 1225
    iget-boolean v8, v4, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isInstalled:Z

    .line 202
    if-nez v8, :cond_57

    .line 204
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 210
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;>;"
    .end local v3    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .end local v4    # "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    :cond_7c
    sget-object v8, Lcom/nuance/swype/input/settings/ThemesFragment$1;->log:Lcom/nuance/swype/util/LogManager$Log;

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

    .line 213
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v8}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v8

    .line 214
    invoke-virtual {v8}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v1

    .line 215
    .local v1, "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    if-eqz v1, :cond_f9

    .line 216
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_af
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 218
    .local v5, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    const/4 v10, 0x0

    :try_start_bc
    move-object v0, v5

    check-cast v0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-object v8, v0

    invoke-virtual {v1, v10, v8}, Lcom/nuance/swype/inapp/CatalogManager;->downloadTheme(ILcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;)V

    .line 219
    sget-object v8, Lcom/nuance/swype/input/settings/ThemesFragment$1;->log:Lcom/nuance/swype/util/LogManager$Log;

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
    :try_end_e2
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_bc .. :try_end_e2} :catch_e3

    goto :goto_af

    .line 221
    :catch_e3
    move-exception v8

    sget-object v8, Lcom/nuance/swype/input/settings/ThemesFragment$1;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v10, "Download of theme failed. SKU: %s"

    new-array v11, v15, [Ljava/lang/Object;

    .line 223
    invoke-virtual {v5}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v14

    .line 221
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_af

    .line 227
    .end local v5    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_f9
    return-void
.end method

.method protected showApplyThemeDialog(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    # getter for: Lcom/nuance/swype/input/settings/ThemesFragment;->isThemePreviewDialogShowing:Z
    invoke-static {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->access$000(Lcom/nuance/swype/input/settings/ThemesFragment;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 93
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    const/4 v2, 0x1

    # setter for: Lcom/nuance/swype/input/settings/ThemesFragment;->isThemePreviewDialogShowing:Z
    invoke-static {v1, v2}, Lcom/nuance/swype/input/settings/ThemesFragment;->access$002(Lcom/nuance/swype/input/settings/ThemesFragment;Z)Z

    .line 97
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string/jumbo v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.category_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string/jumbo v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_view_index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    const-string/jumbo v2, "extra_theme_source"

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/SettingsV11;->getCurrentFragmentSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    const/16 v2, 0x2712

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/input/settings/ThemesFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 104
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_46
    return-void
.end method

.method protected showBundleView(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "bundleSku"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    .line 141
    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 140
    invoke-static {v0, v1}, Lcom/nuance/swype/input/store/ThemeFragmentController;->newInstance(Landroid/content/Context;Landroid/support/v4/app/FragmentActivity;)Lcom/nuance/swype/input/store/ThemeFragmentController;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->VIEW_ALL_THEMES:Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;

    .line 142
    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 141
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/nuance/swype/input/store/ThemeFragmentController;->ShowBundleFragments(Ljava/lang/String;Ljava/lang/String;ILandroid/support/v4/app/FragmentActivity;)V

    .line 143
    return-void
.end method

.method protected showGoogleAccountErrorDialog()V
    .registers 2

    .prologue
    .line 274
    invoke-static {}, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountMissing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 275
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsV11;->showGoogleAccountMissingDialog()Z

    .line 279
    :cond_11
    :goto_11
    return-void

    .line 276
    :cond_12
    invoke-static {}, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountSignedIn()Z

    move-result v0

    if-nez v0, :cond_11

    .line 277
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsV11;->showGoogleAccountLoginFailedDialog()Z

    goto :goto_11
.end method

.method protected showInstallThemeDialog(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "position"    # I
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x2713

    .line 156
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/ThemesFragment$1;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 175
    :cond_e
    :goto_e
    return-void

    .line 159
    :cond_f
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    # getter for: Lcom/nuance/swype/input/settings/ThemesFragment;->isThemePreviewDialogShowing:Z
    invoke-static {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->access$000(Lcom/nuance/swype/input/settings/ThemesFragment;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 160
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    const/4 v2, 0x1

    # setter for: Lcom/nuance/swype/input/settings/ThemesFragment;->isThemePreviewDialogShowing:Z
    invoke-static {v1, v2}, Lcom/nuance/swype/input/settings/ThemesFragment;->access$002(Lcom/nuance/swype/input/settings/ThemesFragment;Z)Z

    .line 165
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_sku"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string/jumbo v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.category_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string/jumbo v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_view_index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    const-string/jumbo v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.Dialog_request"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    const-string/jumbo v2, "extra_theme_source"

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    .line 172
    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/SettingsV11;->getCurrentFragmentSource()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v1, v0, v3}, Lcom/nuance/swype/input/settings/ThemesFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e
.end method

.method protected showPurchaseFlowDialog(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "position"    # I
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/ThemesFragment$1;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 136
    :cond_c
    :goto_c
    return-void

    .line 112
    :cond_d
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    # getter for: Lcom/nuance/swype/input/settings/ThemesFragment;->isThemePreviewDialogShowing:Z
    invoke-static {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->access$000(Lcom/nuance/swype/input/settings/ThemesFragment;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 113
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    const/4 v2, 0x1

    # setter for: Lcom/nuance/swype/input/settings/ThemesFragment;->isThemePreviewDialogShowing:Z
    invoke-static {v1, v2}, Lcom/nuance/swype/input/settings/ThemesFragment;->access$002(Lcom/nuance/swype/input/settings/ThemesFragment;Z)Z

    .line 118
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    .line 119
    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->isGoogleTrialBuild()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 120
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    .line 121
    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 120
    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getThemeManager()Lcom/nuance/swype/input/ThemeManager;

    move-result-object v1

    .line 122
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/ThemeManager;->showNotAvailableDialogForGoogleTrial(Landroid/content/Context;Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;)Landroid/app/Dialog;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_c

    .line 127
    :cond_51
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_sku"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string/jumbo v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.category_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string/jumbo v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_view_index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    const-string/jumbo v2, "extra_theme_source"

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    .line 132
    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/SettingsV11;->getCurrentFragmentSource()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string/jumbo v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.bundle_sku"

    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    # getter for: Lcom/nuance/swype/input/settings/ThemesFragment;->bundleSku:Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/ThemesFragment;->access$100(Lcom/nuance/swype/input/settings/ThemesFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    const/16 v2, 0x2711

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/input/settings/ThemesFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_c
.end method

.method protected showUninstallThemeDialog(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "position"    # I
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x2715

    .line 179
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_sku"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string/jumbo v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.category_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string/jumbo v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_view_index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    const-string/jumbo v2, "extra_theme_source"

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/SettingsV11;->getCurrentFragmentSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string/jumbo v1, "com.nuance.swype.input.settings.PopupDialogThemeActivity.Dialog_request"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v1, v0, v3}, Lcom/nuance/swype/input/settings/ThemesFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 187
    return-void
.end method

.method protected uninstallThemes()V
    .registers 16

    .prologue
    .line 232
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v9}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v9

    .line 233
    iget-object v10, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    .line 234
    invoke-virtual {v10}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/nuance/swype/input/ThemeManager;->getCategoryThemes(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v7

    .line 235
    .local v7, "themes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v8, "toBeUninstalled":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_29
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_76

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 237
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_29

    .line 238
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_51
    :goto_51
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_29

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 239
    .local v4, "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    instance-of v9, v4, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    if-eqz v9, :cond_51

    move-object v9, v4

    .line 240
    check-cast v9, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 241
    invoke-virtual {v9}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v5

    .line 242
    .local v5, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    if-eqz v5, :cond_51

    .line 2206
    iget-boolean v9, v5, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    .line 242
    if-eqz v9, :cond_51

    .line 2225
    iget-boolean v9, v5, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isInstalled:Z

    .line 242
    if-eqz v9, :cond_51

    .line 244
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 250
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;>;"
    .end local v4    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .end local v5    # "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    :cond_76
    sget-object v9, Lcom/nuance/swype/input/settings/ThemesFragment$1;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "to be removed themes: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-interface {v9, v10}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 253
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ThemesFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v9}, Lcom/nuance/swype/input/settings/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v9

    .line 254
    invoke-virtual {v9}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v1

    .line 255
    .local v1, "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    if-eqz v1, :cond_ff

    .line 256
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_a9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ff

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 258
    .local v6, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :try_start_b5
    move-object v0, v6

    check-cast v0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-object v9, v0

    .line 259
    invoke-virtual {v9}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v9

    .line 3120
    iget-object v2, v9, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 261
    .local v2, "categoryKey":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v9, v2, v11}, Lcom/nuance/swype/inapp/CatalogManager;->uninstallTheme(ILjava/lang/String;Ljava/lang/String;)V

    .line 262
    sget-object v9, Lcom/nuance/swype/input/settings/ThemesFragment$1;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "to be removed theme sku is:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-interface {v9, v11}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_e6
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_b5 .. :try_end_e6} :catch_e7

    goto :goto_a9

    .line 264
    .end local v2    # "categoryKey":Ljava/lang/String;
    :catch_e7
    move-exception v9

    sget-object v9, Lcom/nuance/swype/input/settings/ThemesFragment$1;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v11, "removable of theme failed. SKU: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 266
    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 264
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_a9

    .line 270
    .end local v6    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_ff
    return-void
.end method
