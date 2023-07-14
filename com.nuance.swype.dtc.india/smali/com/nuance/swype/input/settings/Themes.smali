.class public abstract Lcom/nuance/swype/input/settings/Themes;
.super Ljava/lang/Object;
.source "Themes.java"

# interfaces
.implements Lcom/nuance/swype/input/ThemeManager$NotifyObserverDataChanged;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;
    }
.end annotation


# static fields
.field private static final ITEM_TAP_WAIT_THRESHOLD:J

.field private static fullRequest:Lcom/bumptech/glide/DrawableRequestBuilder;
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
.field private adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

.field private final catalogManager:Lcom/nuance/swype/inapp/CatalogManager;

.field private final columnWidth:I

.field private final context:Landroid/content/Context;

.field private final fragmentSource:I

.field private mBundleDesc:Landroid/widget/TextView;

.field private mBundleStatusButton:Landroid/widget/Button;

.field private mBundleTitle:Landroid/widget/TextView;

.field private mLastClickedTime:J

.field private final themeManager:Lcom/nuance/swype/input/ThemeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const-string/jumbo v0, "Themes"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/settings/Themes;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 67
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    sput-wide v0, Lcom/nuance/swype/input/settings/Themes;->ITEM_TAP_WAIT_THRESHOLD:J

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "bundleSku"    # Ljava/lang/String;
    .param p4, "source"    # I
    .param p5, "isBundle"    # Z

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Themes;->context:Landroid/content/Context;

    .line 74
    invoke-static {p1}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/settings/Themes;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    .line 75
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Themes;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    const-string/jumbo v4, "no_category_id"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/ThemeManager;->setCurrentCategoryId(Ljava/lang/String;)V

    .line 79
    :cond_0
    iput p4, p0, Lcom/nuance/swype/input/settings/Themes;->fragmentSource:I

    .line 80
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 81
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/settings/Themes;->catalogManager:Lcom/nuance/swype/inapp/CatalogManager;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 83
    .local v1, "resources":Landroid/content/res/Resources;
    sget v3, Lcom/nuance/swype/input/R$dimen;->preference_theme_column_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/nuance/swype/input/settings/Themes;->columnWidth:I

    .line 84
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getPlatformUtil()Lcom/nuance/swype/input/PlatformUtil;

    move-result-object v2

    .line 85
    .local v2, "util":Lcom/nuance/swype/input/PlatformUtil;
    sget-object v3, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->MY_THEMES:Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->ordinal()I

    move-result v3

    if-ne p4, v3, :cond_1

    .line 86
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Themes;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager;->getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;

    .line 1039
    invoke-static {}, Lcom/nuance/swype/util/storage/ThemeData;->isCacheEmpty()Z

    move-result v3

    .line 86
    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/nuance/swype/input/settings/Themes;->catalogManager:Lcom/nuance/swype/inapp/CatalogManager;

    .line 87
    invoke-virtual {v3}, Lcom/nuance/swype/inapp/CatalogManager;->hasStoredSkuList()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/nuance/swype/input/PlatformUtil;->checkForDataConnection()Z

    move-result v3

    if-nez v3, :cond_1

    .line 90
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Themes;->catalogManager:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-virtual {v3}, Lcom/nuance/swype/inapp/CatalogManager;->refreshOfflineCatalogItemsWhenNetworkOff()V

    .line 93
    :cond_1
    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/settings/Themes;Landroid/view/ViewGroup;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/Themes;
    .param p1, "x1"    # Landroid/view/ViewGroup;
    .param p2, "x2"    # Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .param p3, "x3"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/settings/Themes;->clickOnPreviewItem(Landroid/view/ViewGroup;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;I)V

    return-void
.end method

.method static synthetic access$400()Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/nuance/swype/input/settings/Themes;->thumbRequest:Lcom/bumptech/glide/DrawableRequestBuilder;

    return-object v0
.end method

.method static synthetic access$500()Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/nuance/swype/input/settings/Themes;->fullRequest:Lcom/bumptech/glide/DrawableRequestBuilder;

    return-object v0
.end method

.method private clickOnPreviewItem(Landroid/view/ViewGroup;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;I)V
    .locals 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "theme"    # Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .param p3, "position"    # I

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/Themes;->isTapTooQuick()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/nuance/swype/input/settings/Themes;->mLastClickedTime:J

    .line 293
    if-eqz p1, :cond_0

    .line 297
    invoke-virtual {p2}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "arg":Ljava/lang/String;
    iget-object v6, p0, Lcom/nuance/swype/input/settings/Themes;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getCurrentThemeId()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "currentTheme":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string/jumbo v6, ".apk"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 301
    const-string/jumbo v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 302
    const-string/jumbo v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 303
    .local v5, "themePath":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    if-le v6, v7, :cond_2

    .line 305
    array-length v6, v5

    add-int/lit8 v6, v6, -0x2

    aget-object v1, v5, v6

    .line 310
    .end local v5    # "themePath":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 315
    instance-of v6, p2, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    if-eqz v6, :cond_5

    move-object v6, p2

    .line 316
    check-cast v6, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getType()I

    move-result v6

    sget-object v7, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->BUNDLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    invoke-virtual {v7}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_3

    move-object v6, p2

    .line 317
    check-cast v6, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v6

    .line 9120
    iget-object v6, v6, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 317
    invoke-virtual {p2}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/nuance/swype/input/settings/Themes;->showBundleView(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v6, p2

    .line 319
    check-cast v6, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v6

    .line 9214
    iget-boolean v6, v6, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isFree:Z

    .line 319
    if-nez v6, :cond_5

    move-object v6, p2

    check-cast v6, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 320
    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v6

    .line 9225
    iget-boolean v6, v6, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isInstalled:Z

    .line 320
    if-nez v6, :cond_5

    .line 321
    invoke-static {}, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountMissing()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {}, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountSignedIn()Z

    move-result v6

    if-nez v6, :cond_5

    .line 322
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Themes;->showGoogleAccountErrorDialog()V

    goto/16 :goto_0

    .line 327
    :cond_5
    invoke-virtual {p2}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCurrentCategoryLabel()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "no_category_id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 329
    const-string/jumbo v6, "no_category_id"

    invoke-virtual {p0, p3, v0, v6}, Lcom/nuance/swype/input/settings/Themes;->showApplyThemeDialog(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 331
    :cond_6
    iget-object v6, p0, Lcom/nuance/swype/input/settings/Themes;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v3

    .line 332
    .local v3, "mCatalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    if-eqz v3, :cond_0

    move-object v6, p2

    .line 333
    check-cast v6, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v6

    .line 10120
    iget-object v2, v6, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 336
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v6

    .line 335
    invoke-virtual {v3, v2, v6}, Lcom/nuance/swype/inapp/CatalogManager;->getThemeSeed(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v4

    .line 337
    .local v4, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    if-eqz v4, :cond_0

    .line 10225
    iget-boolean v6, v4, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isInstalled:Z

    .line 338
    if-eqz v6, :cond_7

    .line 339
    invoke-virtual {p0, p3, v0, v2}, Lcom/nuance/swype/input/settings/Themes;->showUninstallThemeDialog(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11214
    :cond_7
    iget-boolean v6, v4, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isFree:Z

    .line 340
    if-nez v6, :cond_8

    .line 12206
    iget-boolean v6, v4, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    .line 340
    if-eqz v6, :cond_9

    .line 12235
    :cond_8
    iget-boolean v6, v4, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isInstalling:Z

    .line 341
    if-nez v6, :cond_0

    .line 345
    invoke-virtual {p0, p3, v0, v2}, Lcom/nuance/swype/input/settings/Themes;->showInstallThemeDialog(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 347
    :cond_9
    invoke-virtual {p0, p3, v0, v2}, Lcom/nuance/swype/input/settings/Themes;->showPurchaseFlowDialog(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private isTapTooQuick()Z
    .locals 4

    .prologue
    .line 362
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nuance/swype/input/settings/Themes;->mLastClickedTime:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/nuance/swype/input/settings/Themes;->ITEM_TAP_WAIT_THRESHOLD:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showNoNetworkDialog(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 375
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nuance/swype/input/R$string;->no_network_available:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->no_network_try_again_msg:I

    .line 376
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->dismiss_button:I

    const/4 v2, 0x0

    .line 377
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 380
    return-void
.end method

.method private updateAdapter()V
    .locals 4

    .prologue
    .line 238
    sget-object v0, Lcom/nuance/swype/input/settings/Themes;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Updating adapter"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->notifyDataSetChanged()V

    .line 240
    return-void
.end method


# virtual methods
.method applyTheme(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;Ljava/lang/String;Landroid/content/Context;)V
    .locals 11
    .param p1, "theme"    # Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .param p2, "themeId"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 394
    invoke-static {p3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getThemeManager()Lcom/nuance/swype/input/ThemeManager;

    move-result-object v3

    .line 396
    .local v3, "themeManager":Lcom/nuance/swype/input/ThemeManager;
    invoke-static {p3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getCurrentThemeId()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "oldSku":Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/swype/util/StringUtils;->isApkCompletePath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 398
    const-string/jumbo v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 399
    .local v4, "themePath":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 401
    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    aget-object v0, v4, v5

    .line 405
    .end local v4    # "themePath":[Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 436
    :cond_1
    :goto_0
    return-void

    .line 410
    :cond_2
    invoke-static {p3}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v1

    .line 411
    .local v1, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v1, :cond_3

    .line 412
    const-string/jumbo v5, "Change keyboard theme"

    .line 413
    invoke-virtual {p1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/UserPreferences;->getCurrentThemeId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 412
    invoke-interface {v1, v5, v6, v7}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 416
    :cond_3
    sget-object v5, Lcom/nuance/swype/input/settings/Themes;->log:Lcom/nuance/swype/util/LogManager$Log;

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

    .line 417
    invoke-virtual {p1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSource()Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    move-result-object v5

    sget-object v6, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;->CONNECT:Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    if-ne v5, v6, :cond_5

    .line 418
    sget-object v5, Lcom/nuance/swype/input/settings/Themes;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v10, [Ljava/lang/Object;

    const-string/jumbo v7, "Theme is a downloaded theme"

    aput-object v7, v6, v9

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 419
    invoke-static {p3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/nuance/swype/input/UserPreferences;->setActiveDownloadedTheme(Ljava/lang/String;)V

    .line 420
    invoke-static {p3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/nuance/swype/input/IMEApplication;->getThemeApkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, "themeApkFile":Ljava/lang/String;
    invoke-static {p3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/nuance/swype/input/UserPreferences;->setCurrentThemeId(Ljava/lang/String;)V

    .line 427
    .end local v2    # "themeApkFile":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 429
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v3, p1, v5}, Lcom/nuance/swype/input/ThemeManager;->updateThemesOrderIfOem(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;Landroid/content/res/Resources;)V

    .line 432
    :cond_4
    invoke-virtual {v3, v0, p2, p3}, Lcom/nuance/swype/input/ThemeManager;->onThemeChanged(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 434
    invoke-static {}, Lcom/nuance/android/util/ThemedResources;->onThemeChanged()V

    .line 435
    iget-object v5, p0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    invoke-virtual {v5, p2}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->setCurrentTheme(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 423
    :cond_5
    sget-object v5, Lcom/nuance/swype/input/settings/Themes;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v10, [Ljava/lang/Object;

    const-string/jumbo v7, "Theme is a embedded theme"

    aput-object v7, v6, v9

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 424
    invoke-static {p3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/nuance/swype/input/UserPreferences;->setCurrentThemeId(Ljava/lang/String;)V

    .line 425
    invoke-static {p3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/UserPreferences;->setActiveDownloadedTheme(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public checkNetworkConnection(Landroid/content/Context;)Z
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 366
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getPlatformUtil()Lcom/nuance/swype/input/PlatformUtil;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Lcom/nuance/swype/input/PlatformUtil;->checkForDataConnection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/Themes;->showNoNetworkDialog(Landroid/content/Context;)V

    .line 369
    const/4 v0, 0x0

    .line 371
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getColumnWidth()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/nuance/swype/input/settings/Themes;->columnWidth:I

    return v0
.end method

.method protected getThemeCount()I
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->getCount()I

    move-result v0

    .line 450
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract navigateBackFromBundlePage()V
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 18
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "isBundle"    # Z
    .param p4, "categoryId"    # Ljava/lang/String;
    .param p5, "bundleSku"    # Ljava/lang/String;

    .prologue
    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getPlatformUtil()Lcom/nuance/swype/input/PlatformUtil;

    move-result-object v17

    .line 113
    .local v17, "util":Lcom/nuance/swype/input/PlatformUtil;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/settings/Themes;->fragmentSource:I

    sget-object v3, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->MY_THEMES:Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager;->getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;

    .line 2039
    invoke-static {}, Lcom/nuance/swype/util/storage/ThemeData;->isCacheEmpty()Z

    move-result v2

    .line 114
    if-eqz v2, :cond_0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/PlatformUtil;->checkForDataConnection()Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->catalogManager:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-virtual {v2}, Lcom/nuance/swype/inapp/CatalogManager;->hasStoredSkuList()Z

    move-result v2

    if-nez v2, :cond_3

    .line 118
    const-string/jumbo p4, "no_category_id"

    .line 124
    :cond_0
    :goto_0
    if-eqz p3, :cond_4

    .line 125
    new-instance v2, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/settings/Themes;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    .line 126
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v3, v0, v1}, Lcom/nuance/swype/input/ThemeManager;->getBundleThemes(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/settings/Themes;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/nuance/swype/input/settings/Themes;->columnWidth:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/settings/Themes;->context:Landroid/content/Context;

    .line 127
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/nuance/swype/input/R$dimen;->category_theme_column_height:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nuance/swype/input/settings/Themes;->fragmentSource:I

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;-><init>(Ljava/util/List;Lcom/nuance/swype/input/settings/Themes;Landroid/content/Context;III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    .line 134
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    const-class v3, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 2621
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    .line 135
    sget v3, Lcom/nuance/swype/input/R$drawable;->custom_progressbar_indeterminate:I

    .line 136
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    .line 137
    invoke-virtual {v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    sput-object v2, Lcom/nuance/swype/input/settings/Themes;->fullRequest:Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    const-class v3, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 3621
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    .line 139
    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESULT:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 140
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/settings/Themes;->columnWidth:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/settings/Themes;->context:Landroid/content/Context;

    .line 142
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$dimen;->category_theme_column_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 141
    invoke-virtual {v2, v3, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    sput-object v2, Lcom/nuance/swype/input/settings/Themes;->thumbRequest:Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$color;->preference_theme_highlight:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 146
    .local v12, "highlightColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    invoke-virtual {v2, v12}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->setHighlightColor(I)V

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/settings/Themes;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getCurrentThemeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->setCurrentTheme(Ljava/lang/String;)V

    .line 149
    if-eqz p3, :cond_7

    .line 150
    sget v2, Lcom/nuance/swype/input/R$layout;->theme_bundle_grid_view:I

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 151
    .local v9, "bundleGridView":Landroid/view/View;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    sget v2, Lcom/nuance/swype/input/R$id;->bundle_title:I

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->mBundleTitle:Landroid/widget/TextView;

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->mBundleTitle:Landroid/widget/TextView;

    new-instance v3, Lcom/nuance/swype/input/settings/Themes$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/nuance/swype/input/settings/Themes$1;-><init>(Lcom/nuance/swype/input/settings/Themes;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v2

    .line 163
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v2, v0, v1}, Lcom/nuance/swype/inapp/CatalogManager;->getThemeSeed(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v15

    .line 164
    .local v15, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    if-eqz v15, :cond_2

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->mBundleTitle:Landroid/widget/TextView;

    .line 4146
    iget-object v3, v15, Lcom/nuance/swype/util/storage/ThemeItemSeed;->themeName:Ljava/lang/String;

    .line 165
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->mBundleTitle:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    sget v2, Lcom/nuance/swype/input/R$id;->bundle_description:I

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->mBundleDesc:Landroid/widget/TextView;

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->mBundleDesc:Landroid/widget/TextView;

    .line 4154
    iget-object v3, v15, Lcom/nuance/swype/util/storage/ThemeItemSeed;->bundleDesc:Ljava/lang/String;

    .line 168
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->mBundleDesc:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    sget v2, Lcom/nuance/swype/input/R$id;->bundle_status_button:I

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->mBundleStatusButton:Landroid/widget/Button;

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 4214
    .local v14, "res":Landroid/content/res/Resources;
    iget-boolean v2, v15, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isFree:Z

    .line 173
    if-eqz v2, :cond_5

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->mBundleStatusButton:Landroid/widget/Button;

    sget v3, Lcom/nuance/swype/input/R$string;->bunlde_get_all_for_free:I

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->mBundleStatusButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->mBundleStatusButton:Landroid/widget/Button;

    new-instance v3, Lcom/nuance/swype/input/settings/Themes$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15}, Lcom/nuance/swype/input/settings/Themes$2;-><init>(Lcom/nuance/swype/input/settings/Themes;Lcom/nuance/swype/util/storage/ThemeItemSeed;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    .end local v14    # "res":Landroid/content/res/Resources;
    :cond_2
    sget v2, Lcom/nuance/swype/input/R$id;->settings_back:I

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 194
    new-instance v3, Lcom/nuance/swype/input/settings/Themes$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/nuance/swype/input/settings/Themes$3;-><init>(Lcom/nuance/swype/input/settings/Themes;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    sget v2, Lcom/nuance/swype/input/R$id;->theme_grid_view:I

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/GridView;

    .line 202
    .local v11, "gridView":Landroid/widget/GridView;
    sget-object v2, Lcom/nuance/swype/input/settings/Themes;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "onCreateView...setColumnWidth: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/settings/Themes;->columnWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 203
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/settings/Themes;->columnWidth:I

    invoke-virtual {v11, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 204
    const/4 v2, -0x1

    invoke-virtual {v11, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 205
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/GridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    invoke-virtual {v11, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    invoke-virtual {v2, v11}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->setGridView(Landroid/widget/GridView;)V

    .line 210
    const v2, -0x121213

    invoke-virtual {v11, v2}, Landroid/widget/GridView;->setBackgroundColor(I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$dimen;->preference_theme_preview_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 212
    .local v13, "padding":I
    invoke-virtual {v11, v13}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 213
    invoke-virtual {v11, v13}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 214
    invoke-virtual {v11, v13, v13, v13, v13}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 230
    .end local v9    # "bundleGridView":Landroid/view/View;
    .end local v15    # "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    :goto_3
    return-object v9

    .line 120
    .end local v11    # "gridView":Landroid/widget/GridView;
    .end local v12    # "highlightColor":I
    .end local v13    # "padding":I
    :cond_3
    const-string/jumbo p4, "my_themes"

    goto/16 :goto_0

    .line 129
    :cond_4
    new-instance v2, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/settings/Themes;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/settings/Themes;->context:Landroid/content/Context;

    .line 130
    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Lcom/nuance/swype/input/ThemeManager;->getCategoryThemes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/settings/Themes;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/nuance/swype/input/settings/Themes;->columnWidth:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/settings/Themes;->context:Landroid/content/Context;

    .line 131
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/nuance/swype/input/R$dimen;->category_theme_column_height:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nuance/swype/input/settings/Themes;->fragmentSource:I

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;-><init>(Ljava/util/List;Lcom/nuance/swype/input/settings/Themes;Landroid/content/Context;III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    goto/16 :goto_1

    .line 5206
    .restart local v9    # "bundleGridView":Landroid/view/View;
    .restart local v12    # "highlightColor":I
    .restart local v14    # "res":Landroid/content/res/Resources;
    .restart local v15    # "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    :cond_5
    iget-boolean v2, v15, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    .line 175
    if-eqz v2, :cond_6

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->mBundleStatusButton:Landroid/widget/Button;

    sget v3, Lcom/nuance/swype/input/R$string;->bundle_purchased:I

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 5250
    :cond_6
    iget-boolean v2, v15, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchasable:Z

    .line 177
    if-eqz v2, :cond_1

    .line 178
    sget v2, Lcom/nuance/swype/input/R$string;->bundle_buy_all:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 179
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 6194
    iget-object v5, v15, Lcom/nuance/swype/util/storage/ThemeItemSeed;->price:Ljava/lang/String;

    .line 179
    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 180
    .local v10, "buyAllBundle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->mBundleStatusButton:Landroid/widget/Button;

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 217
    .end local v9    # "bundleGridView":Landroid/view/View;
    .end local v10    # "buyAllBundle":Ljava/lang/String;
    .end local v14    # "res":Landroid/content/res/Resources;
    .end local v15    # "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    :cond_7
    sget v2, Lcom/nuance/swype/input/R$layout;->theme_grid_view:I

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 218
    .local v16, "themesGridView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$dimen;->preference_theme_preview_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 219
    .restart local v13    # "padding":I
    sget v2, Lcom/nuance/swype/input/R$id;->theme_grid_view:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/GridView;

    .line 220
    .restart local v11    # "gridView":Landroid/widget/GridView;
    sget-object v2, Lcom/nuance/swype/input/settings/Themes;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "onCreateView...setColumnWidth: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/settings/Themes;->columnWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 221
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/settings/Themes;->columnWidth:I

    invoke-virtual {v11, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 222
    const/4 v2, -0x1

    invoke-virtual {v11, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 223
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/GridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    invoke-virtual {v11, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    invoke-virtual {v2, v11}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->setGridView(Landroid/widget/GridView;)V

    .line 226
    const v2, -0x121213

    invoke-virtual {v11, v2}, Landroid/widget/GridView;->setBackgroundColor(I)V

    .line 228
    invoke-virtual {v11, v13}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 229
    invoke-virtual {v11, v13}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    move-object/from16 v9, v16

    .line 230
    goto/16 :goto_3
.end method

.method public onDataChanged()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->notifyDataSetChanged()V

    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 439
    sget-object v0, Lcom/nuance/swype/input/settings/Themes;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Recreating theme manager"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 440
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->setGridView(Landroid/widget/GridView;)V

    .line 442
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->setDelegate(Lcom/nuance/swype/input/settings/Themes;)V

    .line 444
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method protected abstract restorePurchases()V
.end method

.method public setCurrentTheme()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/Themes;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getCurrentThemeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->setCurrentTheme(Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/Themes;->updateAdapter()V

    .line 104
    :cond_0
    return-void
.end method

.method protected abstract showApplyThemeDialog(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract showBundleView(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract showGoogleAccountErrorDialog()V
.end method

.method protected abstract showInstallThemeDialog(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract showPurchaseFlowDialog(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract showUninstallThemeDialog(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract uninstallThemes()V
.end method

.method public updateBundleThemes(Ljava/lang/String;)V
    .locals 8
    .param p1, "bundleId"    # Ljava/lang/String;

    .prologue
    .line 260
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Themes;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v0

    .line 261
    .local v0, "mCatalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    if-eqz v0, :cond_2

    .line 262
    const/4 v3, 0x0

    invoke-virtual {v0, v3, p1}, Lcom/nuance/swype/inapp/CatalogManager;->getThemeSeed(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    .line 263
    .local v2, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Themes;->mBundleTitle:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 264
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Themes;->mBundleTitle:Landroid/widget/TextView;

    .line 7146
    iget-object v4, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->themeName:Ljava/lang/String;

    .line 264
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Themes;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 267
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Themes;->mBundleDesc:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 268
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Themes;->mBundleDesc:Landroid/widget/TextView;

    sget v4, Lcom/nuance/swype/input/R$string;->choose_your_theme_desc:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 7154
    iget-object v7, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->bundleDesc:Ljava/lang/String;

    .line 268
    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Themes;->mBundleStatusButton:Landroid/widget/Button;

    if-eqz v3, :cond_2

    .line 7214
    iget-boolean v3, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isFree:Z

    .line 272
    if-eqz v3, :cond_3

    .line 273
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Themes;->mBundleStatusButton:Landroid/widget/Button;

    sget v4, Lcom/nuance/swype/input/R$string;->bunlde_get_all_for_free:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 280
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    :cond_2
    :goto_0
    return-void

    .line 8206
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v2    # "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    :cond_3
    iget-boolean v3, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    .line 274
    if-eqz v3, :cond_2

    .line 275
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Themes;->mBundleStatusButton:Landroid/widget/Button;

    sget v4, Lcom/nuance/swype/input/R$string;->bundle_purchased:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected updateStatusInThemesAdapter(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;Z)V
    .locals 8
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;
    .param p4, "forceUpdateBundleSkus"    # Z

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 244
    sget-object v0, Lcom/nuance/swype/input/settings/Themes;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "updateStatusInThemesAdapter...category:  "

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    const-string/jumbo v2, "...sku: "

    aput-object v2, v1, v6

    aput-object p2, v1, v7

    const/4 v2, 0x4

    const-string/jumbo v3, "...type: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->updateStatusInThemesAdapter(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;Z)Z

    move-result v0

    .line 247
    if-eqz v0, :cond_0

    .line 248
    sget-object v0, Lcom/nuance/swype/input/settings/Themes;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "Updated status, sku:"

    aput-object v2, v1, v4

    aput-object p2, v1, v5

    const-string/jumbo v2, " successfully"

    aput-object v2, v1, v6

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 251
    :cond_0
    return-void
.end method

.method public updateThemes(Ljava/lang/String;)V
    .locals 3
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes;->adapter:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/Themes;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/nuance/swype/input/ThemeManager;->getCategoryThemes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->setThemes(Ljava/util/List;Landroid/content/Context;)V

    .line 285
    return-void
.end method
