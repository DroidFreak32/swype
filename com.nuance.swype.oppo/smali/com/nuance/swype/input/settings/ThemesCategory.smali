.class public abstract Lcom/nuance/swype/input/settings/ThemesCategory;
.super Ljava/lang/Object;
.source "ThemesCategory.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/nuance/swype/input/ThemeManager$NotifyObserverDataChanged;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;,
        Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;
    }
.end annotation


# static fields
.field private static final ARG_THEME_ID:Ljava/lang/String; = "theme_id"

.field static categoryListView:Landroid/widget/ListView;

.field static categoryView:Landroid/view/View;

.field private static highlightColor:I

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static themeManager:Lcom/nuance/swype/input/ThemeManager;

.field private static final themeThumbListAdapterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private static themeThumbnailColumnWidth:I

.field public static theme_color:I


# instance fields
.field private context:Landroid/content/Context;

.field private final themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const v0, -0x1a1a1b

    sput v0, Lcom/nuance/swype/input/settings/ThemesCategory;->theme_color:I

    .line 54
    const-string v0, "ThemesCategory"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeThumbListAdapterMap:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->context:Landroid/content/Context;

    .line 66
    invoke-static {p1}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v1

    sput-object v1, Lcom/nuance/swype/input/settings/ThemesCategory;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcom/nuance/swype/input/R$dimen;->category_theme_column_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/nuance/swype/input/settings/ThemesCategory;->themeThumbnailColumnWidth:I

    .line 69
    invoke-static {}, Lcom/nuance/swype/widget/directional/DirectionalUtil;->isCurrentlyRtl()Z

    move-result v1

    invoke-static {v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->setHorizontalRTL(Z)V

    .line 70
    new-instance v1, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    sget v2, Lcom/nuance/swype/input/R$layout;->theme_category_item:I

    sget-object v3, Lcom/nuance/swype/input/settings/ThemesCategory;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    invoke-virtual {v3, p1}, Lcom/nuance/swype/input/ThemeManager;->getThemeCategoryItemList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3, p0}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/nuance/swype/input/settings/ThemesCategory;)V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    .line 72
    sget v1, Lcom/nuance/swype/input/R$color;->preference_theme_highlight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/nuance/swype/input/settings/ThemesCategory;->highlightColor:I

    .line 73
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    const-string v2, "themes"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IMEApplication;->recordScreenVisited(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/ThemesCategory;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesCategory;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Lcom/nuance/swype/input/ThemeManager;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeThumbnailColumnWidth:I

    return v0
.end method

.method static synthetic access$400()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeThumbListAdapterMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/nuance/swype/input/settings/ThemesCategory;->highlightColor:I

    return v0
.end method


# virtual methods
.method applyTheme(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p1, "themeId"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    invoke-static {p2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getThemeManager()Lcom/nuance/swype/input/ThemeManager;

    move-result-object v2

    .line 169
    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/ThemeManager;->getSwypeTheme(Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v1

    .line 170
    .local v1, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-static {p2}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 171
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_0

    .line 172
    const-string v2, "Change keyboard theme"

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/UserPreferences;->getCurrentThemeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    :cond_0
    sget-object v2, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ThemesCategory::applyTheme Id:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 176
    invoke-static {p2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/UserPreferences;->setCurrentThemeId(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/ThemesCategory;->updateCurrentTheme(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)V

    .line 179
    invoke-static {}, Lcom/nuance/swype/input/KeyboardStyle;->recycleDrawable()V

    .line 180
    return-void
.end method

.method public checkNetworkConnection(Landroid/content/Context;)Z
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 135
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getPlatformUtil()Lcom/nuance/swype/input/PlatformUtil;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/nuance/swype/input/PlatformUtil;->checkForDataConnection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/ThemesCategory;->showNoNetworkDialog(Landroid/content/Context;)V

    .line 138
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreateCategoryListView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 79
    sget v1, Lcom/nuance/swype/input/R$layout;->theme_main_page:I

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 80
    sput-object v1, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    .line 82
    sget-object v1, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryView:Landroid/view/View;

    sget v2, Lcom/nuance/swype/input/R$id;->theme_option_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :cond_0
    sget-object v1, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryView:Landroid/view/View;

    sget v2, Lcom/nuance/swype/input/R$id;->theme_option_low_end:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 87
    new-instance v2, Lcom/nuance/swype/input/settings/ThemesCategory$1;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/ThemesCategory$1;-><init>(Lcom/nuance/swype/input/settings/ThemesCategory;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    sget-object v1, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryView:Landroid/view/View;

    sget v2, Lcom/nuance/swype/input/R$id;->theme_category_list:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 95
    sput-object v1, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 96
    sget-object v1, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    sget-object v1, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    sget-boolean v1, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    if-eqz v1, :cond_2

    .line 99
    sget-object v1, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryView:Landroid/view/View;

    sget v2, Lcom/nuance/swype/input/R$id;->theme_main_page_lineLayout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 100
    sget v2, Lcom/nuance/swype/input/settings/ThemesCategory;->theme_color:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 102
    :cond_2
    sget-object v1, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryView:Landroid/view/View;

    return-object v1
.end method

.method public onDataChanged()Z
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategory;->updateAdapter()V

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 112
    .local v5, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v1, "args":Landroid/os/Bundle;
    invoke-virtual {v5}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCurrentCategoryId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "no_category_id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 115
    invoke-virtual {v5}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getId()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "arg":Ljava/lang/String;
    const-string v6, "theme_id"

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    invoke-static {v5}, Lcom/nuance/swype/input/ThemeManager;->isThemeLocked(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)Z

    move-result v3

    .line 122
    .local v3, "locked":Z
    iget-object v6, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/UserPreferences;->getCurrentThemeId()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "currentTheme":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 132
    :goto_1
    return-void

    .line 118
    .end local v0    # "arg":Ljava/lang/String;
    .end local v2    # "currentTheme":Ljava/lang/String;
    .end local v3    # "locked":Z
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCurrentCategoryId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .restart local v0    # "arg":Ljava/lang/String;
    const-string v6, "theme_id"

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .restart local v2    # "currentTheme":Ljava/lang/String;
    .restart local v3    # "locked":Z
    :cond_1
    if-nez v3, :cond_2

    .line 127
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/ThemesCategory;->showConfirmThemeDialog(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    move-object v4, v5

    .line 129
    check-cast v4, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;

    .line 130
    .local v4, "t":Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;
    invoke-virtual {v4}, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->getSku()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/settings/ThemesCategory;->startPurchaseFlow(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPurchaseFinished(ILjava/lang/String;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "themeId"    # Ljava/lang/String;

    .prologue
    .line 446
    if-nez p1, :cond_1

    .line 447
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "purchased finish succeed"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 448
    if-eqz p2, :cond_0

    .line 449
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->context:Landroid/content/Context;

    invoke-virtual {p0, p2, v0}, Lcom/nuance/swype/input/settings/ThemesCategory;->applyTheme(Ljava/lang/String;Landroid/content/Context;)V

    .line 451
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategory;->updateAdapter()V

    .line 455
    :goto_0
    return-void

    .line 453
    :cond_1
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "purchase finish failed"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract showConfirmThemeDialog(Landroid/os/Bundle;)V
.end method

.method protected abstract showMoreThemes()V
.end method

.method public showNoNetworkDialog(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nuance/swype/input/R$string;->no_network_available:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->no_network_try_again_msg:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->dismiss_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 149
    return-void
.end method

.method protected abstract showThemesPrefs()V
.end method

.method protected abstract startPurchaseFlow(Ljava/lang/String;)V
.end method

.method public updateAdapter()V
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "Updating adapter"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->notifyDataSetChanged()V

    .line 108
    return-void
.end method

.method public updateCurrentTheme(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)V
    .locals 14
    .param p1, "theme"    # Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .prologue
    .line 187
    sget-boolean v11, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    if-eqz v11, :cond_3

    if-eqz p1, :cond_3

    sget-object v11, Lcom/nuance/swype/input/settings/ThemesCategory;->themeThumbListAdapterMap:Ljava/util/HashMap;

    if-eqz v11, :cond_3

    .line 189
    invoke-virtual {p1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCurrentCategoryId()Ljava/lang/String;

    move-result-object v11

    const-string v12, "no_category_id"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 190
    sget-object v11, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    if-eqz v11, :cond_3

    .line 191
    sget-object v11, Lcom/nuance/swype/input/settings/ThemesCategory;->themeThumbListAdapterMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCurrentCategoryId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;

    invoke-virtual {v11}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->getThemes()Ljava/util/List;

    move-result-object v2

    .line 193
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 194
    .local v10, "newMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    invoke-virtual {p1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v11, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    const-string v12, "no_category_id"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 196
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    sget-object v0, Lcom/nuance/swype/input/ThemeManager;->menuOrder:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v8, v0, v4

    .line 197
    .local v8, "menuKey":Ljava/lang/String;
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 198
    .local v1, "curtheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    if-eqz v1, :cond_1

    .line 199
    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->isLocked()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCategoryIds()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getNameResId()I

    move-result v11

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getNameResId()I

    move-result v12

    if-eq v11, v12, :cond_0

    .line 202
    invoke-virtual {v10, v8, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 205
    :cond_1
    sget-object v11, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "updateCurrentTheme Theme not found: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_1

    .line 209
    .end local v1    # "curtheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .end local v8    # "menuKey":Ljava/lang/String;
    :cond_2
    sget-object v11, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    const-string v12, "no_category_id"

    invoke-interface {v11, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v11, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    const-string v12, "no_category_id"

    invoke-interface {v11, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 212
    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    sget-object v11, Lcom/nuance/swype/input/settings/ThemesCategory;->themeThumbListAdapterMap:Ljava/util/HashMap;

    const-string v12, "no_category_id"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;

    invoke-virtual {v11, p1}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->setCurrentTheme(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)V

    .line 214
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategory;->updateAdapter()V

    .line 247
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    .end local v10    # "newMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    :cond_3
    :goto_2
    return-void

    .line 217
    :cond_4
    iget-object v11, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/nuance/swype/input/R$array;->theme_category_ids:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 220
    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_3
    if-ge v4, v6, :cond_3

    aget-object v5, v0, v4

    .line 221
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCurrentCategoryId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 222
    sget-object v11, Lcom/nuance/swype/input/settings/ThemesCategory;->themeThumbListAdapterMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCurrentCategoryId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;

    invoke-virtual {v11}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->getThemes()Ljava/util/List;

    move-result-object v2

    .line 224
    .restart local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    new-instance v11, Lcom/nuance/swype/input/settings/ThemesCategory$2;

    invoke-direct {v11, p0}, Lcom/nuance/swype/input/settings/ThemesCategory$2;-><init>(Lcom/nuance/swype/input/settings/ThemesCategory;)V

    invoke-static {v2, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 230
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 231
    const/4 v11, 0x0

    invoke-interface {v2, v11, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 233
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 234
    .local v9, "mlsMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    sget-object v11, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v11, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 236
    .local v3, "entry":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 238
    .end local v3    # "entry":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_5
    sget-object v11, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v11, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v11, Lcom/nuance/swype/input/settings/ThemesCategory;->themeThumbListAdapterMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCurrentCategoryId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;

    invoke-virtual {v11, p1}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->setCurrentTheme(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)V

    .line 241
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategory;->updateAdapter()V

    goto/16 :goto_2

    .line 220
    .end local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    .end local v9    # "mlsMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    .local v4, "i$":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method
