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
.field private static fullRequest:Lcom/bumptech/glide/DrawableRequestBuilder; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<",
            "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
            ">;"
        }
    .end annotation
.end field

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;

.field public static final theme_color:I = -0xdededf

.field private static thumbRequest:Lcom/bumptech/glide/DrawableRequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<",
            "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private categoryListView:Landroid/widget/ListView;

.field private categoryView:Landroid/view/View;

.field private final context:Landroid/content/Context;

.field private progressView:Landroid/view/View;

.field private themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

.field private final themeManager:Lcom/nuance/swype/input/ThemeManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    const-string/jumbo v0, "ThemesCategory"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->context:Landroid/content/Context;

    .line 79
    invoke-static {p1}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    .line 80
    invoke-static {}, Lcom/nuance/swype/widget/directional/DirectionalUtil;->isCurrentlyRtl()Z

    move-result v0

    invoke-static {v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->setHorizontalRTL(Z)V

    .line 81
    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/ThemesCategory;)Lcom/nuance/swype/input/ThemeManager;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesCategory;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesCategory;->fullRequest:Lcom/bumptech/glide/DrawableRequestBuilder;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/nuance/swype/input/settings/ThemesCategory;->getCurrentThemeSku(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesCategory;->thumbRequest:Lcom/bumptech/glide/DrawableRequestBuilder;

    return-object v0
.end method

.method private applyCurrentTheme(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "oldSku"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    if-eqz v0, :cond_23

    .line 185
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Updating applyCurrentTheme...sku: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "...oldSku: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->applyCurrentTheme(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_23
    return-void
.end method

.method private static getCurrentThemeSku(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 511
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getCurrentThemeId()Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "sku":Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/swype/util/StringUtils;->isApkCompletePath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 513
    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, "themePath":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_1e

    .line 516
    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    aget-object v0, v1, v2

    .line 519
    .end local v1    # "themePath":[Ljava/lang/String;
    :cond_1e
    return-object v0
.end method

.method private refreshUI(Z)V
    .registers 5
    .param p1, "hideCategoryList"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 131
    if-eqz p1, :cond_18

    .line 132
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryListView:Landroid/widget/ListView;

    if-eqz v0, :cond_e

    .line 133
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 135
    :cond_e
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->progressView:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 136
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->progressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :cond_17
    :goto_17
    return-void

    .line 139
    :cond_18
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryListView:Landroid/widget/ListView;

    if-eqz v0, :cond_21

    .line 140
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 142
    :cond_21
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->progressView:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 143
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->progressView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_17
.end method

.method private showNoNetworkDialog(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 278
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nuance/swype/input/R$string;->no_network_available:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->no_network_try_again_msg:I

    .line 279
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->dismiss_button:I

    const/4 v2, 0x0

    .line 280
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 283
    return-void
.end method


# virtual methods
.method applyTheme(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;Ljava/lang/String;Landroid/content/Context;)V
    .registers 15
    .param p1, "theme"    # Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .param p2, "themeId"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 311
    sget-object v5, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v8, [Ljava/lang/Object;

    const-string/jumbo v7, "Applying theme: "

    aput-object v7, v6, v9

    aput-object p2, v6, v10

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 312
    const-string/jumbo v5, "android.test.purchased"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 313
    sget-object v5, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v10, [Ljava/lang/Object;

    const-string/jumbo v7, "Cancelled applying theme"

    aput-object v7, v6, v9

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 357
    :cond_26
    :goto_26
    return-void

    .line 318
    :cond_27
    invoke-static {p3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getCurrentThemeId()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "oldSku":Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/swype/util/StringUtils;->isApkCompletePath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 320
    const-string/jumbo v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, "themePath":[Ljava/lang/String;
    array-length v5, v4

    if-le v5, v8, :cond_44

    .line 323
    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    aget-object v0, v4, v5

    .line 327
    .end local v4    # "themePath":[Ljava/lang/String;
    :cond_44
    if-eqz v0, :cond_26

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 331
    invoke-static {p3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getThemeManager()Lcom/nuance/swype/input/ThemeManager;

    move-result-object v3

    .line 332
    .local v3, "themeManager":Lcom/nuance/swype/input/ThemeManager;
    invoke-static {p3}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v1

    .line 333
    .local v1, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v1, :cond_7c

    .line 334
    const-string/jumbo v5, "Change keyboard theme"

    invoke-virtual {p1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-static {p3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/UserPreferences;->getCurrentThemeId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 334
    invoke-interface {v1, v5, v6, v7}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 339
    :cond_7c
    sget-object v5, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v10, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ThemesCategory::applyTheme Id:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 341
    sget-object v5, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v10, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Themes::applyTheme Id:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 342
    invoke-virtual {p1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSource()Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    move-result-object v5

    sget-object v6, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;->CONNECT:Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    if-ne v5, v6, :cond_e7

    .line 343
    sget-object v5, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v10, [Ljava/lang/Object;

    const-string/jumbo v7, "Theme is a downloaded theme"

    aput-object v7, v6, v9

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 344
    invoke-static {p3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/nuance/swype/input/UserPreferences;->setActiveDownloadedTheme(Ljava/lang/String;)V

    .line 345
    invoke-static {p3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/nuance/swype/input/IMEApplication;->getThemeApkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "themeApkFile":Ljava/lang/String;
    invoke-static {p3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/nuance/swype/input/UserPreferences;->setCurrentThemeId(Ljava/lang/String;)V

    .line 353
    .end local v2    # "themeApkFile":Ljava/lang/String;
    :goto_d8
    invoke-virtual {v3, v0, p2, p3}, Lcom/nuance/swype/input/ThemeManager;->onThemeChanged(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 355
    invoke-static {}, Lcom/nuance/android/util/ThemedResources;->onThemeChanged()V

    .line 356
    invoke-virtual {p1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v0}, Lcom/nuance/swype/input/settings/ThemesCategory;->applyCurrentTheme(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 348
    :cond_e7
    sget-object v5, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v10, [Ljava/lang/Object;

    const-string/jumbo v7, "Theme is a embedded theme"

    aput-object v7, v6, v9

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 349
    invoke-static {p3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/nuance/swype/input/UserPreferences;->setCurrentThemeId(Ljava/lang/String;)V

    .line 350
    invoke-static {p3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/UserPreferences;->setActiveDownloadedTheme(Ljava/lang/String;)V

    goto :goto_d8
.end method

.method public checkNetworkConnection(Landroid/content/Context;)Z
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 269
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getPlatformUtil()Lcom/nuance/swype/input/PlatformUtil;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lcom/nuance/swype/input/PlatformUtil;->checkForDataConnection()Z

    move-result v0

    if-nez v0, :cond_13

    .line 271
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/ThemesCategory;->showNoNetworkDialog(Landroid/content/Context;)V

    .line 272
    const/4 v0, 0x0

    .line 274
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public notifyThumbAdapterDataSetChanged(Ljava/lang/String;)V
    .registers 3
    .param p1, "categoryId"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->notifyThumbListAdapter(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public onCreateCategoryListView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const v7, -0xdededf

    const/4 v6, -0x1

    const/4 v8, 0x0

    .line 84
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getPlatformUtil()Lcom/nuance/swype/input/PlatformUtil;

    move-result-object v0

    .line 85
    .local v0, "util":Lcom/nuance/swype/input/PlatformUtil;
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager;->getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;

    .line 1039
    invoke-static {}, Lcom/nuance/swype/util/storage/ThemeData;->isCacheEmpty()Z

    move-result v2

    .line 85
    if-eqz v2, :cond_43

    invoke-virtual {v0}, Lcom/nuance/swype/input/PlatformUtil;->checkForDataConnection()Z

    move-result v2

    if-nez v2, :cond_43

    .line 86
    sget v2, Lcom/nuance/swype/input/R$layout;->theme_main_page:I

    invoke-virtual {p1, v2, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryView:Landroid/view/View;

    .line 87
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryView:Landroid/view/View;

    sget v3, Lcom/nuance/swype/input/R$id;->theme_no_data_page:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 90
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 91
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .end local v1    # "v":Landroid/view/View;
    :goto_40
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryView:Landroid/view/View;

    return-object v2

    .line 93
    :cond_43
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    const-class v3, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 1621
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    .line 94
    sget v3, Lcom/nuance/swype/input/R$drawable;->custom_progressbar_indeterminate:I

    .line 95
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    sput-object v2, Lcom/nuance/swype/input/settings/ThemesCategory;->fullRequest:Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 97
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    const-class v3, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 2621
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    .line 98
    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESULT:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 99
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->context:Landroid/content/Context;

    .line 100
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$dimen;->category_theme_column_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->context:Landroid/content/Context;

    .line 101
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$dimen;->category_theme_column_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 100
    invoke-virtual {v2, v3, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    sput-object v2, Lcom/nuance/swype/input/settings/ThemesCategory;->thumbRequest:Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 103
    sget v2, Lcom/nuance/swype/input/R$layout;->theme_main_page:I

    invoke-virtual {p1, v2, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryView:Landroid/view/View;

    .line 104
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryView:Landroid/view/View;

    sget v3, Lcom/nuance/swype/input/R$id;->theme_category_list:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryListView:Landroid/widget/ListView;

    .line 108
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryListView:Landroid/widget/ListView;

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 109
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryView:Landroid/view/View;

    sget v3, Lcom/nuance/swype/input/R$id;->no_data_progress_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->progressView:Landroid/view/View;

    .line 113
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryView:Landroid/view/View;

    sget v3, Lcom/nuance/swype/input/R$id;->theme_main_page_lineLayout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 114
    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 115
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager;->getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;

    .line 3039
    invoke-static {}, Lcom/nuance/swype/util/storage/ThemeData;->isCacheEmpty()Z

    move-result v2

    .line 115
    if-eqz v2, :cond_d9

    .line 117
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/settings/ThemesCategory;->refreshUI(Z)V

    goto/16 :goto_40

    .line 119
    :cond_d9
    new-instance v2, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->context:Landroid/content/Context;

    sget v4, Lcom/nuance/swype/input/R$layout;->theme_category_item:I

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    iget-object v7, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->context:Landroid/content/Context;

    .line 120
    invoke-virtual {v6, v7}, Lcom/nuance/swype/input/ThemeManager;->getThemeCategoryItemList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3, v4, v5, p0}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/nuance/swype/input/settings/ThemesCategory;)V

    iput-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    .line 121
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    invoke-direct {p0, v8}, Lcom/nuance/swype/input/settings/ThemesCategory;->refreshUI(Z)V

    goto/16 :goto_40
.end method

.method public onDataChanged()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 303
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onDataChanged"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 305
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategory;->updateThemeCategoryAdapter()V

    .line 306
    return v4
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    if-eqz v0, :cond_c

    .line 151
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->onDestroy()V

    .line 152
    iput-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    .line 155
    :cond_c
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1c

    .line 156
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    iput-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryListView:Landroid/widget/ListView;

    .line 160
    :cond_1c
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 18
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
    .line 211
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 212
    .local v6, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    sget-object v8, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "onItemClick...parent: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "...view: "

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object p2, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "...position: "

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string/jumbo v11, "...id: "

    aput-object v11, v9, v10

    const/4 v10, 0x7

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;

    .line 214
    .local v2, "hd":Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;
    sget-object v8, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "onItemClick...view name: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, v2, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->name:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 215
    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "arg":Ljava/lang/String;
    iget-object v8, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/IMEApplication;->getCurrentThemeId()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "currentTheme":Ljava/lang/String;
    invoke-static {v1}, Lcom/nuance/swype/util/StringUtils;->isApkCompletePath(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 219
    const-string/jumbo v8, "/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 220
    .local v7, "themePath":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x2

    if-le v8, v9, :cond_7c

    .line 222
    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    aget-object v1, v7, v8

    .line 226
    .end local v7    # "themePath":[Ljava/lang/String;
    :cond_7c
    if-eqz v1, :cond_84

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_85

    .line 266
    :cond_84
    :goto_84
    return-void

    .line 229
    :cond_85
    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCurrentCategoryLabel()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "no_category_id"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_99

    .line 231
    const-string/jumbo v8, "no_category_id"

    invoke-virtual {p0, p3, v0, v8}, Lcom/nuance/swype/input/settings/ThemesCategory;->showApplyThemeDialog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    .line 233
    :cond_99
    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->isConnectTheme()Z

    move-result v8

    if-eqz v8, :cond_e7

    move-object v8, v6

    .line 234
    check-cast v8, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v8}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v8

    .line 3132
    iget v8, v8, Lcom/nuance/swype/util/storage/ThemeItemSeed;->type:I

    .line 234
    sget-object v9, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->BUNDLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    .line 235
    invoke-virtual {v9}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->ordinal()I

    move-result v9

    if-ne v8, v9, :cond_c1

    move-object v8, v6

    .line 236
    check-cast v8, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v8}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v8

    .line 4120
    iget-object v8, v8, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 236
    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/nuance/swype/input/settings/ThemesCategory;->showBundleView(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    :cond_c1
    move-object v8, v6

    .line 238
    check-cast v8, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v8}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v8

    .line 4214
    iget-boolean v8, v8, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isFree:Z

    .line 238
    if-nez v8, :cond_e7

    move-object v8, v6

    check-cast v8, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 239
    invoke-virtual {v8}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v8

    .line 4225
    iget-boolean v8, v8, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isInstalled:Z

    .line 239
    if-nez v8, :cond_e7

    .line 240
    invoke-static {}, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountMissing()Z

    move-result v8

    if-nez v8, :cond_e3

    invoke-static {}, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountSignedIn()Z

    move-result v8

    if-nez v8, :cond_e7

    .line 241
    :cond_e3
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategory;->showGoogleAccountErrorDialog()V

    goto :goto_84

    .line 246
    :cond_e7
    iget-object v8, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v4

    .local v4, "mCatalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    move-object v8, v6

    .line 247
    check-cast v8, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v8}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v8

    .line 5120
    iget-object v3, v8, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 248
    .local v3, "key":Ljava/lang/String;
    if-eqz v4, :cond_84

    move-object v8, v6

    .line 249
    check-cast v8, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 250
    invoke-virtual {v8}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v8

    .line 6120
    iget-object v8, v8, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 250
    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v9

    .line 249
    invoke-virtual {v4, v8, v9}, Lcom/nuance/swype/inapp/CatalogManager;->getThemeSeed(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v5

    .line 251
    .local v5, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    sget-object v8, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "onItemClick...sku: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "...category label: "

    aput-object v11, v9, v10

    const/4 v10, 0x3

    .line 252
    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCurrentCategoryLabel()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 251
    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 253
    if-eqz v5, :cond_84

    .line 6225
    iget-boolean v8, v5, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isInstalled:Z

    .line 254
    if-eqz v8, :cond_13a

    .line 255
    invoke-virtual {p0, p3, v0, v3}, Lcom/nuance/swype/input/settings/ThemesCategory;->showUninstallThemeDialog(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_84

    .line 7214
    :cond_13a
    iget-boolean v8, v5, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isFree:Z

    .line 256
    if-nez v8, :cond_142

    .line 8206
    iget-boolean v8, v5, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    .line 256
    if-eqz v8, :cond_14b

    .line 8235
    :cond_142
    iget-boolean v8, v5, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isInstalling:Z

    .line 257
    if-nez v8, :cond_84

    .line 258
    invoke-virtual {p0, p3, v0, v3}, Lcom/nuance/swype/input/settings/ThemesCategory;->showInstallThemeDialog(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_84

    .line 261
    :cond_14b
    invoke-virtual {p0, p3, v0, v3}, Lcom/nuance/swype/input/settings/ThemesCategory;->showPurchaseFlowDialog(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_84
.end method

.method public onPurchaseFinished(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "resultCode"    # I
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "categoryId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 802
    if-nez p1, :cond_11

    .line 803
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "purchased finish succeed"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 810
    :goto_10
    return-void

    .line 808
    :cond_11
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "purchase finish failed"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_10
.end method

.method protected refreshCategoryListView()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 813
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager;->getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;

    .line 9039
    invoke-static {}, Lcom/nuance/swype/util/storage/ThemeData;->isCacheEmpty()Z

    move-result v0

    .line 813
    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->context:Landroid/content/Context;

    .line 814
    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/ThemeManager;->getThemeCategoryItemList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1f

    .line 816
    :cond_1a
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/ThemesCategory;->refreshUI(Z)V

    .line 830
    :cond_1e
    :goto_1e
    return-void

    .line 818
    :cond_1f
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    if-nez v0, :cond_1e

    .line 819
    new-instance v0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->context:Landroid/content/Context;

    sget v2, Lcom/nuance/swype/input/R$layout;->theme_category_item:I

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->context:Landroid/content/Context;

    .line 820
    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/ThemeManager;->getThemeCategoryItemList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/nuance/swype/input/settings/ThemesCategory;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    .line 821
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryListView:Landroid/widget/ListView;

    if-nez v0, :cond_55

    .line 822
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryView:Landroid/view/View;

    sget v1, Lcom/nuance/swype/input/R$id;->theme_category_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryListView:Landroid/widget/ListView;

    .line 823
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryListView:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 824
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 826
    :cond_55
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->categoryListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 827
    invoke-direct {p0, v6}, Lcom/nuance/swype/input/settings/ThemesCategory;->refreshUI(Z)V

    goto :goto_1e
.end method

.method protected abstract restorePurchases()V
.end method

.method protected abstract showApplyThemeDialog(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract showBundleView(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract showGoogleAccountErrorDialog()V
.end method

.method protected abstract showInstallThemeDialog(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract showMoreThemes(Ljava/lang/String;)V
.end method

.method protected abstract showPurchaseFlowDialog(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract showUninstallThemeDialog(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract uninstallThemes()V
.end method

.method public updateAllThumbListAdapter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "oldSku"    # Ljava/lang/String;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    if-eqz v0, :cond_23

    .line 178
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Updating updateAllThumbListAdapter...sku: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "...oldSku: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->updateAllThumbListAdapter(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_23
    return-void
.end method

.method protected updateStatusInThemesAdapter(Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V
    .registers 7
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    if-eqz v0, :cond_23

    .line 199
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Updating updateStatusInThemesAdapter...sku: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "...type: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->updateStatusInThemesAdapter(Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V

    .line 202
    :cond_23
    return-void
.end method

.method protected updateStatusInThemesAdapter(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V
    .registers 8
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    if-eqz v0, :cond_2c

    .line 192
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Updating updateStatusInThemesAdapter...category: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "...sku: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "...status type: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->updateStatusInThemesAdapter(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V

    .line 195
    :cond_2c
    return-void
.end method

.method public updateThemeCategoryAdapter()V
    .registers 5

    .prologue
    .line 163
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    if-nez v0, :cond_5

    .line 170
    :goto_4
    return-void

    .line 166
    :cond_5
    sget-object v0, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Updating updateThemeCategoryAdapter"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->clear()V

    .line 168
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/ThemeManager;->getThemeCategoryItemList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->addAll(Ljava/util/Collection;)V

    .line 169
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->notifyDataSetChanged()V

    goto :goto_4
.end method

.method protected updateThemeThumbListAdapter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "categoryId"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    if-eqz v0, :cond_9

    .line 206
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory;->themeCategoryAdapter:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->updateThemeThumbListAdapter(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_9
    return-void
.end method
