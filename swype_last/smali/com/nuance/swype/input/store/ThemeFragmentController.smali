.class public Lcom/nuance/swype/input/store/ThemeFragmentController;
.super Ljava/lang/Object;
.source "ThemeFragmentController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/store/ThemeFragmentController$BundleThemeFragment;,
        Lcom/nuance/swype/input/store/ThemeFragmentController$ViewAllTabThemeFragment;,
        Lcom/nuance/swype/input/store/ThemeFragmentController$MyThemesFragment;
    }
.end annotation


# static fields
.field private static controller:Lcom/nuance/swype/input/store/ThemeFragmentController;


# instance fields
.field private bundleFragment:Lcom/nuance/swype/input/store/ThemeFragmentController$BundleThemeFragment;

.field private mContext:Landroid/content/Context;

.field private mainTabFragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private viewAllTabFragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentActivity;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->mainTabFragmentList:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->viewAllTabFragmentList:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public static final destroyInstance()V
    .registers 1

    .prologue
    .line 171
    sget-object v0, Lcom/nuance/swype/input/settings/SettingsV11;->INSTANCE_COUNT:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/nuance/swype/input/store/ThemeFragmentController;->controller:Lcom/nuance/swype/input/store/ThemeFragmentController;

    if-eqz v0, :cond_14

    .line 172
    sget-object v0, Lcom/nuance/swype/input/store/ThemeFragmentController;->controller:Lcom/nuance/swype/input/store/ThemeFragmentController;

    invoke-direct {v0}, Lcom/nuance/swype/input/store/ThemeFragmentController;->releaseTabsFragment()V

    .line 173
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/swype/input/store/ThemeFragmentController;->controller:Lcom/nuance/swype/input/store/ThemeFragmentController;

    .line 175
    :cond_14
    return-void
.end method

.method public static getGetThemesFragment()Landroid/support/v4/app/Fragment;
    .registers 1

    .prologue
    .line 91
    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->newInstance(Ljava/lang/String;)Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    move-result-object v0

    return-object v0
.end method

.method public static final newInstance(Landroid/content/Context;Landroid/support/v4/app/FragmentActivity;)Lcom/nuance/swype/input/store/ThemeFragmentController;
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 35
    sget-object v0, Lcom/nuance/swype/input/store/ThemeFragmentController;->controller:Lcom/nuance/swype/input/store/ThemeFragmentController;

    if-nez v0, :cond_b

    .line 36
    new-instance v0, Lcom/nuance/swype/input/store/ThemeFragmentController;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/store/ThemeFragmentController;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentActivity;)V

    sput-object v0, Lcom/nuance/swype/input/store/ThemeFragmentController;->controller:Lcom/nuance/swype/input/store/ThemeFragmentController;

    .line 38
    :cond_b
    sget-object v0, Lcom/nuance/swype/input/store/ThemeFragmentController;->controller:Lcom/nuance/swype/input/store/ThemeFragmentController;

    return-object v0
.end method

.method private releaseTabsFragment()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->mainTabFragmentList:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 179
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->mainTabFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    iput-object v1, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->mainTabFragmentList:Ljava/util/List;

    .line 182
    :cond_c
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->viewAllTabFragmentList:Ljava/util/List;

    if-eqz v0, :cond_17

    .line 183
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->viewAllTabFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 184
    iput-object v1, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->viewAllTabFragmentList:Ljava/util/List;

    .line 186
    :cond_17
    return-void
.end method


# virtual methods
.method public ShowBundleFragments(Ljava/lang/String;Ljava/lang/String;ILandroid/support/v4/app/FragmentActivity;)V
    .registers 9
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "bundlSku"    # Ljava/lang/String;
    .param p3, "source"    # I
    .param p4, "store"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 99
    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$Screen;->BUNDLE_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$Screen;

    invoke-static {v2}, Lcom/nuance/swype/usagedata/UsageData;->recordScreenVisited(Lcom/nuance/swype/usagedata/UsageData$Screen;)V

    move-object v2, p4

    .line 100
    check-cast v2, Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/SettingsV11;->getTabHostManager()Lcom/nuance/swype/input/store/ThemeTabHostManager;

    move-result-object v1

    .line 101
    .local v1, "tabHostManager":Lcom/nuance/swype/input/store/ThemeTabHostManager;
    invoke-virtual {v1}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->hideTabHost()V

    move-object v2, p4

    .line 102
    check-cast v2, Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/SettingsV11;->getActionbarManager()Lcom/nuance/swype/input/store/ThemeActionBarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeActionBarManager;->hideActionBar()V

    .line 103
    invoke-virtual {v1}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->getCurrentFragmentInfo()Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->BUNDLE_THEMES:Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;

    .line 104
    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->ordinal()I

    move-result v3

    .line 103
    invoke-virtual {v2, v3, p1, p2}, Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;->initialize(ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    sget-object v2, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->FRAGMENT_NONE:Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->ordinal()I

    move-result v2

    if-eq p3, v2, :cond_35

    .line 106
    invoke-virtual {v1}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->getCurrentFragmentInfo()Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;->setSourceFragment(I)V

    .line 108
    :cond_35
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/store/ThemeFragmentController;->initializeBundleFragment(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p4}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 110
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    sget v2, Lcom/nuance/swype/input/R$id;->content_frame:I

    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->bundleFragment:Lcom/nuance/swype/input/store/ThemeFragmentController$BundleThemeFragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 111
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 123
    check-cast p4, Lcom/nuance/swype/input/settings/SettingsV11;

    .end local p4    # "store":Landroid/support/v4/app/FragmentActivity;
    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->bundleFragment:Lcom/nuance/swype/input/store/ThemeFragmentController$BundleThemeFragment;

    invoke-virtual {p4, v2}, Lcom/nuance/swype/input/settings/SettingsV11;->setCurrentFragment(Landroid/support/v4/app/Fragment;)V

    .line 124
    return-void
.end method

.method public ShowViewAllTabFragments(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V
    .registers 4
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "store"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 95
    check-cast p2, Lcom/nuance/swype/input/settings/SettingsV11;

    .end local p2    # "store":Landroid/support/v4/app/FragmentActivity;
    invoke-virtual {p2}, Lcom/nuance/swype/input/settings/SettingsV11;->getTabHostManager()Lcom/nuance/swype/input/store/ThemeTabHostManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->showViewAllTabsList(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public getMainTabThemeFragments(Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;)Ljava/util/List;
    .registers 5
    .param p1, "source"    # Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->mainTabFragmentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    sget-object v2, Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;->INIT:Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;

    if-eq p1, v2, :cond_f

    .line 43
    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->mainTabFragmentList:Ljava/util/List;

    .line 52
    :goto_e
    return-object v2

    .line 46
    :cond_f
    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->mainTabFragmentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 48
    const-string/jumbo v2, "my_themes"

    invoke-static {v2}, Lcom/nuance/swype/input/store/ThemeFragmentController$MyThemesFragment;->createInstance(Ljava/lang/String;)Lcom/nuance/swype/input/store/ThemeFragmentController$MyThemesFragment;

    move-result-object v0

    .line 49
    .local v0, "f1":Landroid/support/v4/app/Fragment;
    const-string/jumbo v2, ""

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->newInstance(Ljava/lang/String;)Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    move-result-object v1

    .line 50
    .local v1, "f2":Landroid/support/v4/app/Fragment;
    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->mainTabFragmentList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->mainTabFragmentList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->mainTabFragmentList:Ljava/util/List;

    goto :goto_e
.end method

.method public getMyThemesFragment(Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;)Ljava/util/List;
    .registers 4
    .param p1, "source"    # Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->mainTabFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;->INIT:Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;

    if-eq p1, v0, :cond_f

    .line 80
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->mainTabFragmentList:Ljava/util/List;

    .line 87
    :goto_e
    return-object v0

    .line 83
    :cond_f
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->mainTabFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->mainTabFragmentList:Ljava/util/List;

    const-string/jumbo v1, "my_themes"

    invoke-static {v1}, Lcom/nuance/swype/input/store/ThemeFragmentController$MyThemesFragment;->createInstance(Ljava/lang/String;)Lcom/nuance/swype/input/store/ThemeFragmentController$MyThemesFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->mainTabFragmentList:Ljava/util/List;

    goto :goto_e
.end method

.method public getViewAllTabThemeFragments(Z)Ljava/util/List;
    .registers 8
    .param p1, "reuseable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v2

    .line 57
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/ThemeManager;->getThemeCategoryItemList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 58
    .local v0, "categoryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/inapp/CategoryItem;>;"
    if-nez v0, :cond_10

    .line 59
    const/4 v2, 0x0

    .line 70
    :goto_f
    return-object v2

    .line 61
    :cond_10
    if-eqz p1, :cond_2f

    invoke-static {}, Lcom/nuance/swype/input/InputMethods;->isLocaleChanged()Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->viewAllTabFragmentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->viewAllTabFragmentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_2f

    .line 63
    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->viewAllTabFragmentList:Ljava/util/List;

    goto :goto_f

    .line 65
    :cond_2f
    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->viewAllTabFragmentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 66
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/inapp/CategoryItem;

    .line 67
    .local v1, "item":Lcom/nuance/swype/inapp/CategoryItem;
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->viewAllTabFragmentList:Ljava/util/List;

    .line 1024
    iget-object v4, v1, Lcom/nuance/swype/inapp/CategoryItem;->categoryId:Ljava/lang/String;

    .line 67
    sget-object v5, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->VIEW_ALL_THEMES:Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;

    invoke-static {v4, v5}, Lcom/nuance/swype/input/settings/ThemesFragment;->newInstance(Ljava/lang/String;Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;)Lcom/nuance/swype/input/settings/ThemesFragment;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 70
    .end local v1    # "item":Lcom/nuance/swype/inapp/CategoryItem;
    :cond_52
    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->viewAllTabFragmentList:Ljava/util/List;

    goto :goto_f
.end method

.method public initializeBundleFragment(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "bundleSku"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-static {p1, p2}, Lcom/nuance/swype/input/store/ThemeFragmentController$BundleThemeFragment;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/input/store/ThemeFragmentController$BundleThemeFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->bundleFragment:Lcom/nuance/swype/input/store/ThemeFragmentController$BundleThemeFragment;

    .line 128
    return-void
.end method

.method public localeChanged()V
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeFragmentController;->viewAllTabFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    return-void
.end method
