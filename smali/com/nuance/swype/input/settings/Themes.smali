.class public abstract Lcom/nuance/swype/input/settings/Themes;
.super Ljava/lang/Object;
.source "Themes.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/nuance/swype/input/ThemeManager$NotifyObserverDataChanged;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;
    }
.end annotation


# static fields
.field private static final ARG_THEME_ID:Ljava/lang/String; = "theme_id"

.field public static isMoreView:Z

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

.field private final columnWidth:I

.field private context:Landroid/content/Context;

.field private final themeManager:Lcom/nuance/swype/input/ThemeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "Themes"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/settings/Themes;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Themes;->context:Landroid/content/Context;

    .line 49
    invoke-static {p1}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/settings/Themes;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    .line 50
    sget-boolean v2, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    if-nez v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    const-string v3, "no_category_id"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/ThemeManager;->setCurrentCategoryId(Ljava/lang/String;)V

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 56
    .local v1, "resources":Landroid/content/res/Resources;
    sget v2, Lcom/nuance/swype/input/R$dimen;->preference_theme_column_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/settings/Themes;->columnWidth:I

    .line 57
    new-instance v2, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/Themes;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    invoke-virtual {v3, p1}, Lcom/nuance/swype/input/ThemeManager;->getCurrentCategoryThemes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/nuance/swype/input/settings/Themes;->columnWidth:I

    invoke-direct {v2, v3, p1, v4}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;-><init>(Ljava/util/List;Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    .line 61
    sget v2, Lcom/nuance/swype/input/R$color;->preference_theme_highlight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 62
    .local v0, "highlightColor":I
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->setHighlightColor(I)V

    .line 63
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getCurrentTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->setCurrentTheme(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)V

    .line 64
    return-void
.end method

.method private isImagesLoadedForBelowAPI21(Landroid/widget/AdapterView;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 125
    if-nez p1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v3

    .line 128
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 132
    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 133
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 134
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$Holder;

    .line 135
    .local v0, "holder":Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$Holder;
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$Holder;->image:Lcom/nuance/swype/widget/LoadingImageView;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$Holder;->image:Lcom/nuance/swype/widget/LoadingImageView;

    iget v4, v4, Lcom/nuance/swype/widget/LoadingImageView;->imageId:I

    if-lez v4, :cond_2

    iget-object v4, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$Holder;->image:Lcom/nuance/swype/widget/LoadingImageView;

    invoke-virtual {v4}, Lcom/nuance/swype/widget/LoadingImageView;->isImageLoaded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    .end local v0    # "holder":Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$Holder;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method applyTheme(Ljava/lang/String;Landroid/content/Context;)V
    .locals 7
    .param p1, "themeId"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    invoke-static {p2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getThemeManager()Lcom/nuance/swype/input/ThemeManager;

    move-result-object v2

    .line 217
    .local v2, "themeManager":Lcom/nuance/swype/input/ThemeManager;
    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/ThemeManager;->getSwypeTheme(Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v1

    .line 218
    .local v1, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-static {p2}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 220
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_0

    .line 221
    const-string v3, "Change keyboard theme"

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/UserPreferences;->getCurrentThemeId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v4, v5}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    :cond_0
    sget-object v3, Lcom/nuance/swype/input/settings/Themes;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Themes::applyTheme Id:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 225
    invoke-static {p2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/nuance/swype/input/UserPreferences;->setCurrentThemeId(Ljava/lang/String;)V

    .line 226
    sget-boolean v3, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    if-nez v3, :cond_1

    .line 228
    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/ThemeManager;->updateThemesOrderIfOem(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)V

    .line 235
    :goto_0
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    invoke-virtual {v3, v1}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->setCurrentTheme(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)V

    .line 237
    return-void

    .line 231
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    invoke-virtual {v2, p2}, Lcom/nuance/swype/input/ThemeManager;->getCurrentCategoryThemes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->setThemes(Ljava/util/List;Landroid/content/Context;)V

    .line 233
    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/ThemeManager;->updateCurrentThemesCategory(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)V

    goto :goto_0
.end method

.method public checkNetworkConnection(Landroid/content/Context;)Z
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 195
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getPlatformUtil()Lcom/nuance/swype/input/PlatformUtil;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lcom/nuance/swype/input/PlatformUtil;->checkForDataConnection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/Themes;->showNoNetworkDialog(Landroid/content/Context;)V

    .line 198
    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 69
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_0

    sget-boolean v3, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    if-eqz v3, :cond_1

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/GridView;

    invoke-direct {v1, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 72
    .local v1, "gridView":Landroid/widget/GridView;
    iget v3, p0, Lcom/nuance/swype/input/settings/Themes;->columnWidth:I

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 73
    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 74
    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 75
    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    sget v3, Lcom/nuance/swype/input/settings/ThemesCategory;->theme_color:I

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setBackgroundColor(I)V

    .line 80
    sput-boolean v7, Lcom/nuance/swype/input/settings/Themes;->isMoreView:Z

    move-object v2, v1

    .line 103
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-object v2

    .line 84
    .end local v1    # "gridView":Landroid/widget/GridView;
    :cond_1
    sget v3, Lcom/nuance/swype/input/R$layout;->theme_grid_view:I

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 85
    .local v2, "themeGridView":Landroid/view/View;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    sget v3, Lcom/nuance/swype/input/R$id;->theme_grid_view_option_low_end:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 89
    new-instance v4, Lcom/nuance/swype/input/settings/Themes$1;

    invoke-direct {v4, p0}, Lcom/nuance/swype/input/settings/Themes$1;-><init>(Lcom/nuance/swype/input/settings/Themes;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    sget v3, Lcom/nuance/swype/input/R$id;->theme_grid_view:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 97
    .restart local v1    # "gridView":Landroid/widget/GridView;
    iget v3, p0, Lcom/nuance/swype/input/settings/Themes;->columnWidth:I

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 98
    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 99
    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 100
    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    sput-boolean v7, Lcom/nuance/swype/input/settings/Themes;->isMoreView:Z

    goto :goto_0
.end method

.method public onDataChanged()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->notifyDataSetChanged()V

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    .line 147
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    if-eqz p2, :cond_0

    .line 154
    const/4 v4, 0x0

    .line 155
    .local v4, "isTablet720P":Z
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xd

    if-gt v7, v8, :cond_2

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_2

    .line 156
    sget-boolean v4, Lcom/nuance/swype/input/settings/SettingsV11;->isTablet_720DP:Z

    .line 158
    :cond_2
    if-nez v4, :cond_4

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-ge v7, v8, :cond_4

    .line 159
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/Themes;->isImagesLoadedForBelowAPI21(Landroid/widget/AdapterView;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 170
    :cond_3
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 171
    .local v6, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 172
    .local v1, "args":Landroid/os/Bundle;
    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCurrentCategoryId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "no_category_id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 174
    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getId()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "arg":Ljava/lang/String;
    const-string v7, "theme_id"

    invoke-virtual {v1, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_1
    iget-object v7, p0, Lcom/nuance/swype/input/settings/Themes;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/UserPreferences;->getCurrentThemeId()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "currentTheme":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 184
    invoke-static {v6}, Lcom/nuance/swype/input/ThemeManager;->isThemeLocked(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)Z

    move-result v7

    .line 185
    if-nez v7, :cond_6

    .line 186
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/Themes;->showConfirmThemeDialog(Landroid/os/Bundle;)V

    goto :goto_0

    .line 164
    .end local v0    # "arg":Ljava/lang/String;
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v2    # "currentTheme":Ljava/lang/String;
    .end local v6    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$Holder;

    .line 165
    .local v3, "holder":Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$Holder;
    if-eqz v3, :cond_3

    iget-object v7, v3, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$Holder;->image:Lcom/nuance/swype/widget/LoadingImageView;

    if-eqz v7, :cond_3

    iget-object v7, v3, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$Holder;->image:Lcom/nuance/swype/widget/LoadingImageView;

    invoke-virtual {v7}, Lcom/nuance/swype/widget/LoadingImageView;->isImageLoaded()Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_0

    .line 177
    .end local v3    # "holder":Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$Holder;
    .restart local v1    # "args":Landroid/os/Bundle;
    .restart local v6    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCurrentCategoryId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .restart local v0    # "arg":Ljava/lang/String;
    const-string v7, "theme_id"

    invoke-virtual {v1, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .restart local v2    # "currentTheme":Ljava/lang/String;
    :cond_6
    move-object v5, v6

    .line 189
    check-cast v5, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;

    .line 190
    .local v5, "t":Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;
    invoke-virtual {v5}, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->getSku()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/settings/Themes;->startPurchaseFlow(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected abstract showConfirmThemeDialog(Landroid/os/Bundle;)V
.end method

.method public showNoNetworkDialog(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 204
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

    .line 208
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 209
    return-void
.end method

.method protected abstract showThemesPrefs()V
.end method

.method protected abstract startPurchaseFlow(Ljava/lang/String;)V
.end method

.method protected updateAdapter()V
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/nuance/swype/input/settings/Themes;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "Updating adapter"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->notifyDataSetChanged()V

    .line 110
    return-void
.end method
